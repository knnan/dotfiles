

CREATE TABLE booking ( booking_id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
                                                                         vm_id text NOT NULL,
                                                                                    user_id int NOT NULL,
                                                                                                start_time bigint NOT NULL,
                                                                                                                  end_time bigint, os text NOT NULL,
                                                                                                                                           os_ver text NOT NULL,
                                                                                                                                                       video_url text NOT NULL,
                                                                                                                                                                      booking_type text CHECK (booking_type IN ('manual',
                                                                                                                                                                                                                'automation')) NOT NULL,
                                                                                                                                                                                                                               automation_type text CHECK (automation_type IN ('selenium',
                                                                                                                                                                                                                                                                               'autotype1',
                                                                                                                                                                                                                                                                               'autotype2'))