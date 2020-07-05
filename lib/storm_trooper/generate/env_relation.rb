# # frozen_string_literal: true
#
# module StormTrooper
#   module Generate
#     class EnvRelation < Base
#
#       def default
#         env = {
#           common: {
#             dev: ''
#           },
#           real: {
#             stg: '',
#             prd: '',
#           }
#         }.to_yaml
#         YAML.dump(env, 'tmp')
#       end
#
#     end
#   end
# end
