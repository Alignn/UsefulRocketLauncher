data.raw.projectile["rocket"].action.action_delivery.target_effects =
		{
          {
            type = "create-entity",
            entity_name = "explosion"
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              perimeter = 8,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 100, type = "explosion"}
                  },
                  {
                    type = "create-entity",
                    entity_name = "explosion"
                  }
                }
              }
            },
          }
        }
data.raw.projectile["explosive-rocket"].action =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "explosion"
            },
            {
              type = "create-entity",
              entity_name = "small-scorchmark",
              check_buildability = true
            }
          }
        }
      },
      {
        type = "cluster",
        cluster_count = 5,
        distance = 7,
        distance_deviation = 7,
        action_delivery =
        {
          type = "projectile",
          projectile = "rocket",
          direction_deviation = 2,
          starting_speed = 0.25,
          starting_speed_deviation = 0.1
        }
      }
    }