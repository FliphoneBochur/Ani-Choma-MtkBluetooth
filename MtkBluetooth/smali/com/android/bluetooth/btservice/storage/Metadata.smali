.class Lcom/android/bluetooth/btservice/storage/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"


# instance fields
.field public a2dpOptionalCodecsEnabled:I

.field public a2dpSupportsOptionalCodecs:I

.field private address:Ljava/lang/String;

.field public is_active_a2dp_device:Z

.field public last_active_time:J

.field public migrated:Z

.field public profileConnectionPolicies:Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;

.field public publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->address:Ljava/lang/String;

    .line 56
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->migrated:Z

    .line 57
    new-instance p1, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;

    invoke-direct {p1}, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->profileConnectionPolicies:Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;

    .line 58
    new-instance p1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    invoke-direct {p1}, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    .line 59
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->a2dpSupportsOptionalCodecs:I

    .line 60
    iput p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->a2dpOptionalCodecsEnabled:I

    .line 61
    sget p1, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;->sCurrentConnectionNumber:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;->sCurrentConnectionNumber:I

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->last_active_time:J

    .line 62
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->is_active_a2dp_device:Z

    .line 63
    return-void
.end method


# virtual methods
.method getAddress()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->address:Ljava/lang/String;

    return-object v0
.end method

.method getChangedCustomizedMeta()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iget-object v1, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->manufacturer_name:[B

    if-eqz v1, :cond_0

    .line 265
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iget-object v1, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->model_name:[B

    if-eqz v1, :cond_1

    .line 268
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iget-object v1, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->software_version:[B

    if-eqz v1, :cond_2

    .line 271
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iget-object v1, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->hardware_version:[B

    if-eqz v1, :cond_3

    .line 274
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iget-object v1, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->companion_app:[B

    if-eqz v1, :cond_4

    .line 277
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_4
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iget-object v1, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->main_icon:[B

    if-eqz v1, :cond_5

    .line 280
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_5
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iget-object v1, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->is_untethered_headset:[B

    if-eqz v1, :cond_6

    .line 283
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_6
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iget-object v1, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_left_icon:[B

    if-eqz v1, :cond_7

    .line 286
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_7
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iget-object v1, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_right_icon:[B

    if-eqz v1, :cond_8

    .line 289
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_8
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iget-object v1, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_case_icon:[B

    if-eqz v1, :cond_9

    .line 292
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_9
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iget-object v1, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_left_battery:[B

    if-eqz v1, :cond_a

    .line 295
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_a
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iget-object v1, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_right_battery:[B

    if-eqz v1, :cond_b

    .line 298
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_b
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iget-object v1, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_case_battery:[B

    if-eqz v1, :cond_c

    .line 301
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_c
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iget-object v1, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_left_charging:[B

    if-eqz v1, :cond_d

    .line 304
    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_d
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iget-object v1, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_right_charging:[B

    if-eqz v1, :cond_e

    .line 307
    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_e
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iget-object v1, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_case_charging:[B

    if-eqz v1, :cond_f

    .line 310
    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_f
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iget-object v1, v1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->enhanced_settings_ui_uri:[B

    if-eqz v1, :cond_10

    .line 313
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_10
    return-object v0
.end method

.method getCustomizedMeta(I)[B
    .locals 0

    .line 205
    nop

    .line 206
    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 256
    :pswitch_0
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iget-object p1, p1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->enhanced_settings_ui_uri:[B

    goto :goto_0

    .line 253
    :pswitch_1
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iget-object p1, p1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_case_charging:[B

    .line 254
    goto :goto_0

    .line 250
    :pswitch_2
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iget-object p1, p1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_right_charging:[B

    .line 251
    goto :goto_0

    .line 247
    :pswitch_3
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iget-object p1, p1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_left_charging:[B

    .line 248
    goto :goto_0

    .line 244
    :pswitch_4
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iget-object p1, p1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_case_battery:[B

    .line 245
    goto :goto_0

    .line 241
    :pswitch_5
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iget-object p1, p1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_right_battery:[B

    .line 242
    goto :goto_0

    .line 238
    :pswitch_6
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iget-object p1, p1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_left_battery:[B

    .line 239
    goto :goto_0

    .line 235
    :pswitch_7
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iget-object p1, p1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_case_icon:[B

    .line 236
    goto :goto_0

    .line 232
    :pswitch_8
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iget-object p1, p1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_right_icon:[B

    .line 233
    goto :goto_0

    .line 229
    :pswitch_9
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iget-object p1, p1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_left_icon:[B

    .line 230
    goto :goto_0

    .line 226
    :pswitch_a
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iget-object p1, p1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->is_untethered_headset:[B

    .line 227
    goto :goto_0

    .line 223
    :pswitch_b
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iget-object p1, p1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->main_icon:[B

    .line 224
    goto :goto_0

    .line 220
    :pswitch_c
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iget-object p1, p1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->companion_app:[B

    .line 221
    goto :goto_0

    .line 217
    :pswitch_d
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iget-object p1, p1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->hardware_version:[B

    .line 218
    goto :goto_0

    .line 214
    :pswitch_e
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iget-object p1, p1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->software_version:[B

    .line 215
    goto :goto_0

    .line 211
    :pswitch_f
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iget-object p1, p1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->model_name:[B

    .line 212
    goto :goto_0

    .line 208
    :pswitch_10
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iget-object p1, p1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->manufacturer_name:[B

    .line 209
    nop

    .line 259
    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getProfileConnectionPolicy(I)I
    .locals 1

    .line 119
    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 145
    const/4 p1, -0x1

    return p1

    .line 139
    :pswitch_0
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->profileConnectionPolicies:Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;

    iget p1, p1, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->map_client_connection_policy:I

    return p1

    .line 135
    :pswitch_1
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->profileConnectionPolicies:Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;

    iget p1, p1, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->pbap_client_connection_policy:I

    return p1

    .line 127
    :pswitch_2
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->profileConnectionPolicies:Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;

    iget p1, p1, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->hfp_client_connection_policy:I

    return p1

    .line 123
    :pswitch_3
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->profileConnectionPolicies:Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;

    iget p1, p1, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->a2dp_sink_connection_policy:I

    return p1

    .line 141
    :pswitch_4
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->profileConnectionPolicies:Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;

    iget p1, p1, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->sap_connection_policy:I

    return p1

    .line 137
    :pswitch_5
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->profileConnectionPolicies:Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;

    iget p1, p1, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->map_connection_policy:I

    return p1

    .line 143
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->profileConnectionPolicies:Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;

    iget p1, p1, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->hearing_aid_connection_policy:I

    return p1

    .line 133
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->profileConnectionPolicies:Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;

    iget p1, p1, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->pbap_connection_policy:I

    return p1

    .line 131
    :cond_2
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->profileConnectionPolicies:Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;

    iget p1, p1, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->pan_connection_policy:I

    return p1

    .line 129
    :cond_3
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->profileConnectionPolicies:Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;

    iget p1, p1, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->hid_host_connection_policy:I

    return p1

    .line 121
    :cond_4
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->profileConnectionPolicies:Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;

    iget p1, p1, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->a2dp_connection_policy:I

    return p1

    .line 125
    :cond_5
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->profileConnectionPolicies:Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;

    iget p1, p1, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->hfp_connection_policy:I

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setCustomizedMeta(I[B)V
    .locals 0

    .line 149
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 199
    :pswitch_0
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iput-object p2, p1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->enhanced_settings_ui_uri:[B

    goto :goto_0

    .line 196
    :pswitch_1
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iput-object p2, p1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_case_charging:[B

    .line 197
    goto :goto_0

    .line 193
    :pswitch_2
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iput-object p2, p1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_right_charging:[B

    .line 194
    goto :goto_0

    .line 190
    :pswitch_3
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iput-object p2, p1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_left_charging:[B

    .line 191
    goto :goto_0

    .line 187
    :pswitch_4
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iput-object p2, p1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_case_battery:[B

    .line 188
    goto :goto_0

    .line 184
    :pswitch_5
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iput-object p2, p1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_right_battery:[B

    .line 185
    goto :goto_0

    .line 181
    :pswitch_6
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iput-object p2, p1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_left_battery:[B

    .line 182
    goto :goto_0

    .line 178
    :pswitch_7
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iput-object p2, p1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_case_icon:[B

    .line 179
    goto :goto_0

    .line 175
    :pswitch_8
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iput-object p2, p1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_right_icon:[B

    .line 176
    goto :goto_0

    .line 172
    :pswitch_9
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iput-object p2, p1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_left_icon:[B

    .line 173
    goto :goto_0

    .line 169
    :pswitch_a
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iput-object p2, p1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->is_untethered_headset:[B

    .line 170
    goto :goto_0

    .line 166
    :pswitch_b
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iput-object p2, p1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->main_icon:[B

    .line 167
    goto :goto_0

    .line 163
    :pswitch_c
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iput-object p2, p1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->companion_app:[B

    .line 164
    goto :goto_0

    .line 160
    :pswitch_d
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iput-object p2, p1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->hardware_version:[B

    .line 161
    goto :goto_0

    .line 157
    :pswitch_e
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iput-object p2, p1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->software_version:[B

    .line 158
    goto :goto_0

    .line 154
    :pswitch_f
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iput-object p2, p1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->model_name:[B

    .line 155
    goto :goto_0

    .line 151
    :pswitch_10
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    iput-object p2, p1, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->manufacturer_name:[B

    .line 152
    nop

    .line 202
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setProfileConnectionPolicy(II)V
    .locals 2

    .line 72
    const/16 v0, 0x64

    if-le p2, v0, :cond_0

    .line 73
    move p2, v0

    .line 76
    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 114
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 105
    :pswitch_0
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->profileConnectionPolicies:Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;

    iput p2, p1, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->map_client_connection_policy:I

    .line 106
    goto :goto_0

    .line 99
    :pswitch_1
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->profileConnectionPolicies:Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;

    iput p2, p1, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->pbap_client_connection_policy:I

    .line 100
    goto :goto_0

    .line 87
    :pswitch_2
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->profileConnectionPolicies:Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;

    iput p2, p1, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->hfp_client_connection_policy:I

    .line 88
    goto :goto_0

    .line 81
    :pswitch_3
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->profileConnectionPolicies:Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;

    iput p2, p1, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->a2dp_sink_connection_policy:I

    .line 82
    goto :goto_0

    .line 108
    :pswitch_4
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->profileConnectionPolicies:Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;

    iput p2, p1, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->sap_connection_policy:I

    .line 109
    goto :goto_0

    .line 102
    :pswitch_5
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->profileConnectionPolicies:Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;

    iput p2, p1, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->map_connection_policy:I

    .line 103
    goto :goto_0

    .line 111
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->profileConnectionPolicies:Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;

    iput p2, p1, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->hearing_aid_connection_policy:I

    .line 112
    goto :goto_0

    .line 96
    :cond_2
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->profileConnectionPolicies:Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;

    iput p2, p1, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->pbap_connection_policy:I

    .line 97
    goto :goto_0

    .line 93
    :cond_3
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->profileConnectionPolicies:Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;

    iput p2, p1, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->pan_connection_policy:I

    .line 94
    goto :goto_0

    .line 90
    :cond_4
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->profileConnectionPolicies:Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;

    iput p2, p1, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->hid_host_connection_policy:I

    .line 91
    goto :goto_0

    .line 78
    :cond_5
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->profileConnectionPolicies:Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;

    iput p2, p1, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->a2dp_connection_policy:I

    .line 79
    goto :goto_0

    .line 84
    :cond_6
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->profileConnectionPolicies:Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;

    iput p2, p1, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->hfp_connection_policy:I

    .line 85
    nop

    .line 116
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    const-string v1, " {profile connection policy("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->profileConnectionPolicies:Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;

    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 323
    const-string v1, "), optional codec(support="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->a2dpSupportsOptionalCodecs:I

    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 325
    const-string v1, "|enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->a2dpOptionalCodecsEnabled:I

    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 327
    const-string v1, "), custom metadata("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 329
    const-string v1, ")}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
