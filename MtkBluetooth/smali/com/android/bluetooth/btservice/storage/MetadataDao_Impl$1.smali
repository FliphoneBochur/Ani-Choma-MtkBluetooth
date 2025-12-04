.class Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "MetadataDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/android/bluetooth/btservice/storage/Metadata;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl$1;->this$0:Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/android/bluetooth/btservice/storage/Metadata;)V
    .locals 16

    .line 39
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/btservice/storage/Metadata;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 40
    invoke-interface {v0, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/btservice/storage/Metadata;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 45
    :goto_0
    iget-boolean v2, v1, Lcom/android/bluetooth/btservice/storage/Metadata;->migrated:Z

    .line 46
    const/4 v3, 0x2

    int-to-long v4, v2

    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 47
    const/4 v2, 0x3

    iget v3, v1, Lcom/android/bluetooth/btservice/storage/Metadata;->a2dpSupportsOptionalCodecs:I

    int-to-long v3, v3

    invoke-interface {v0, v2, v3, v4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 48
    const/4 v2, 0x4

    iget v3, v1, Lcom/android/bluetooth/btservice/storage/Metadata;->a2dpOptionalCodecsEnabled:I

    int-to-long v3, v3

    invoke-interface {v0, v2, v3, v4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 49
    const/4 v2, 0x5

    iget-wide v3, v1, Lcom/android/bluetooth/btservice/storage/Metadata;->last_active_time:J

    invoke-interface {v0, v2, v3, v4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 51
    iget-boolean v2, v1, Lcom/android/bluetooth/btservice/storage/Metadata;->is_active_a2dp_device:Z

    .line 52
    const/4 v3, 0x6

    int-to-long v4, v2

    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 53
    iget-object v2, v1, Lcom/android/bluetooth/btservice/storage/Metadata;->profileConnectionPolicies:Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;

    .line 54
    const/16 v3, 0xa

    const/16 v4, 0x9

    const/16 v5, 0x8

    const/4 v6, 0x7

    if-eqz v2, :cond_1

    .line 55
    iget v7, v2, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->a2dp_connection_policy:I

    int-to-long v7, v7

    invoke-interface {v0, v6, v7, v8}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 56
    iget v6, v2, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->a2dp_sink_connection_policy:I

    int-to-long v6, v6

    invoke-interface {v0, v5, v6, v7}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 57
    iget v5, v2, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->hfp_connection_policy:I

    int-to-long v5, v5

    invoke-interface {v0, v4, v5, v6}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 58
    iget v4, v2, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->hfp_client_connection_policy:I

    int-to-long v4, v4

    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 59
    const/16 v3, 0xb

    iget v4, v2, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->hid_host_connection_policy:I

    int-to-long v4, v4

    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 60
    const/16 v3, 0xc

    iget v4, v2, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->pan_connection_policy:I

    int-to-long v4, v4

    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 61
    const/16 v3, 0xd

    iget v4, v2, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->pbap_connection_policy:I

    int-to-long v4, v4

    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 62
    const/16 v3, 0xe

    iget v4, v2, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->pbap_client_connection_policy:I

    int-to-long v4, v4

    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 63
    const/16 v3, 0xf

    iget v4, v2, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->map_connection_policy:I

    int-to-long v4, v4

    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 64
    const/16 v3, 0x10

    iget v4, v2, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->sap_connection_policy:I

    int-to-long v4, v4

    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 65
    const/16 v3, 0x11

    iget v4, v2, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->hearing_aid_connection_policy:I

    int-to-long v4, v4

    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 66
    const/16 v3, 0x12

    iget v2, v2, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->map_client_connection_policy:I

    int-to-long v4, v2

    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    goto :goto_1

    .line 68
    :cond_1
    invoke-interface {v0, v6}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 69
    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 70
    invoke-interface {v0, v4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 71
    invoke-interface {v0, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 72
    const/16 v2, 0xb

    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 73
    const/16 v2, 0xc

    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 74
    const/16 v2, 0xd

    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 75
    const/16 v2, 0xe

    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 76
    const/16 v2, 0xf

    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 77
    const/16 v2, 0x10

    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 78
    const/16 v2, 0x11

    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 79
    const/16 v2, 0x12

    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 81
    :goto_1
    iget-object v1, v1, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    .line 82
    const/16 v6, 0x1f

    const/16 v7, 0x1e

    const/16 v8, 0x1d

    const/16 v9, 0x1c

    const/16 v10, 0x1b

    const/16 v11, 0x1a

    const/16 v12, 0x19

    const/16 v13, 0x18

    const/16 v14, 0x17

    const/16 v15, 0x16

    const/16 v2, 0x15

    const/16 v3, 0x14

    const/16 v4, 0x13

    if-eqz v1, :cond_13

    .line 83
    iget-object v5, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->manufacturer_name:[B

    if-nez v5, :cond_2

    .line 84
    invoke-interface {v0, v4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 86
    :cond_2
    iget-object v5, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->manufacturer_name:[B

    invoke-interface {v0, v4, v5}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 88
    :goto_2
    iget-object v4, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->model_name:[B

    if-nez v4, :cond_3

    .line 89
    invoke-interface {v0, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 91
    :cond_3
    iget-object v4, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->model_name:[B

    invoke-interface {v0, v3, v4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 93
    :goto_3
    iget-object v3, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->software_version:[B

    if-nez v3, :cond_4

    .line 94
    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 96
    :cond_4
    iget-object v3, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->software_version:[B

    invoke-interface {v0, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 98
    :goto_4
    iget-object v2, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->hardware_version:[B

    if-nez v2, :cond_5

    .line 99
    invoke-interface {v0, v15}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 101
    :cond_5
    iget-object v2, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->hardware_version:[B

    invoke-interface {v0, v15, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 103
    :goto_5
    iget-object v2, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->companion_app:[B

    if-nez v2, :cond_6

    .line 104
    invoke-interface {v0, v14}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_6

    .line 106
    :cond_6
    iget-object v2, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->companion_app:[B

    invoke-interface {v0, v14, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 108
    :goto_6
    iget-object v2, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->main_icon:[B

    if-nez v2, :cond_7

    .line 109
    invoke-interface {v0, v13}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_7

    .line 111
    :cond_7
    iget-object v2, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->main_icon:[B

    invoke-interface {v0, v13, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 113
    :goto_7
    iget-object v2, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->is_untethered_headset:[B

    if-nez v2, :cond_8

    .line 114
    invoke-interface {v0, v12}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_8

    .line 116
    :cond_8
    iget-object v2, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->is_untethered_headset:[B

    invoke-interface {v0, v12, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 118
    :goto_8
    iget-object v2, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_left_icon:[B

    if-nez v2, :cond_9

    .line 119
    invoke-interface {v0, v11}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_9

    .line 121
    :cond_9
    iget-object v2, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_left_icon:[B

    invoke-interface {v0, v11, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 123
    :goto_9
    iget-object v2, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_right_icon:[B

    if-nez v2, :cond_a

    .line 124
    invoke-interface {v0, v10}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_a

    .line 126
    :cond_a
    iget-object v2, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_right_icon:[B

    invoke-interface {v0, v10, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 128
    :goto_a
    iget-object v2, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_case_icon:[B

    if-nez v2, :cond_b

    .line 129
    invoke-interface {v0, v9}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_b

    .line 131
    :cond_b
    iget-object v2, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_case_icon:[B

    invoke-interface {v0, v9, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 133
    :goto_b
    iget-object v2, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_left_battery:[B

    if-nez v2, :cond_c

    .line 134
    invoke-interface {v0, v8}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_c

    .line 136
    :cond_c
    iget-object v2, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_left_battery:[B

    invoke-interface {v0, v8, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 138
    :goto_c
    iget-object v2, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_right_battery:[B

    if-nez v2, :cond_d

    .line 139
    invoke-interface {v0, v7}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_d

    .line 141
    :cond_d
    iget-object v2, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_right_battery:[B

    invoke-interface {v0, v7, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 143
    :goto_d
    iget-object v2, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_case_battery:[B

    if-nez v2, :cond_e

    .line 144
    invoke-interface {v0, v6}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_e

    .line 146
    :cond_e
    iget-object v2, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_case_battery:[B

    invoke-interface {v0, v6, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 148
    :goto_e
    iget-object v2, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_left_charging:[B

    if-nez v2, :cond_f

    .line 149
    const/16 v2, 0x20

    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_f

    .line 151
    :cond_f
    const/16 v2, 0x20

    iget-object v3, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_left_charging:[B

    invoke-interface {v0, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 153
    :goto_f
    iget-object v2, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_right_charging:[B

    if-nez v2, :cond_10

    .line 154
    const/16 v2, 0x21

    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_10

    .line 156
    :cond_10
    const/16 v2, 0x21

    iget-object v3, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_right_charging:[B

    invoke-interface {v0, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 158
    :goto_10
    iget-object v2, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_case_charging:[B

    if-nez v2, :cond_11

    .line 159
    const/16 v2, 0x22

    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_11

    .line 161
    :cond_11
    const/16 v2, 0x22

    iget-object v3, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_case_charging:[B

    invoke-interface {v0, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 163
    :goto_11
    iget-object v2, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->enhanced_settings_ui_uri:[B

    if-nez v2, :cond_12

    .line 164
    const/16 v2, 0x23

    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_12

    .line 166
    :cond_12
    const/16 v2, 0x23

    iget-object v1, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->enhanced_settings_ui_uri:[B

    invoke-interface {v0, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    goto :goto_12

    .line 169
    :cond_13
    invoke-interface {v0, v4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 170
    invoke-interface {v0, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 171
    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 172
    invoke-interface {v0, v15}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 173
    invoke-interface {v0, v14}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 174
    invoke-interface {v0, v13}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 175
    invoke-interface {v0, v12}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 176
    invoke-interface {v0, v11}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 177
    invoke-interface {v0, v10}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 178
    invoke-interface {v0, v9}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 179
    invoke-interface {v0, v8}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 180
    invoke-interface {v0, v7}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 181
    invoke-interface {v0, v6}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 182
    const/16 v1, 0x20

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 183
    const/16 v1, 0x21

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 184
    const/16 v1, 0x22

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 185
    const/16 v1, 0x23

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 187
    :goto_12
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p2, Lcom/android/bluetooth/btservice/storage/Metadata;

    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/android/bluetooth/btservice/storage/Metadata;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 34
    const-string v0, "INSERT OR REPLACE INTO `metadata` (`address`,`migrated`,`a2dpSupportsOptionalCodecs`,`a2dpOptionalCodecsEnabled`,`last_active_time`,`is_active_a2dp_device`,`a2dp_connection_policy`,`a2dp_sink_connection_policy`,`hfp_connection_policy`,`hfp_client_connection_policy`,`hid_host_connection_policy`,`pan_connection_policy`,`pbap_connection_policy`,`pbap_client_connection_policy`,`map_connection_policy`,`sap_connection_policy`,`hearing_aid_connection_policy`,`map_client_connection_policy`,`manufacturer_name`,`model_name`,`software_version`,`hardware_version`,`companion_app`,`main_icon`,`is_untethered_headset`,`untethered_left_icon`,`untethered_right_icon`,`untethered_case_icon`,`untethered_left_battery`,`untethered_right_battery`,`untethered_case_battery`,`untethered_left_charging`,`untethered_right_charging`,`untethered_case_charging`,`enhanced_settings_ui_uri`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
