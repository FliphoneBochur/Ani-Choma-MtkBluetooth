.class public final enum Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;
.super Ljava/lang/Enum;
.source "BluetoothMetricsProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/BluetoothMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProfileId"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId$ProfileIdVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

.field public static final enum A2DP:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

.field public static final enum A2DP_SINK:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

.field public static final A2DP_SINK_VALUE:I = 0xb

.field public static final A2DP_VALUE:I = 0x2

.field public static final enum AVRCP:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

.field public static final enum AVRCP_CONTROLLER:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

.field public static final AVRCP_CONTROLLER_VALUE:I = 0xc

.field public static final AVRCP_VALUE:I = 0xd

.field public static final enum GATT:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

.field public static final enum GATT_SERVER:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

.field public static final GATT_SERVER_VALUE:I = 0x8

.field public static final GATT_VALUE:I = 0x7

.field public static final enum HEADSET:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

.field public static final enum HEADSET_CLIENT:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

.field public static final HEADSET_CLIENT_VALUE:I = 0x10

.field public static final HEADSET_VALUE:I = 0x1

.field public static final enum HEALTH:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

.field public static final HEALTH_VALUE:I = 0x3

.field public static final enum HEARING_AID:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

.field public static final HEARING_AID_VALUE:I = 0x15

.field public static final enum HID_DEVICE:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

.field public static final HID_DEVICE_VALUE:I = 0x13

.field public static final enum HID_HOST:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

.field public static final HID_HOST_VALUE:I = 0x4

.field public static final enum MAP:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

.field public static final enum MAP_CLIENT:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

.field public static final MAP_CLIENT_VALUE:I = 0x12

.field public static final MAP_VALUE:I = 0x9

.field public static final enum OPP:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

.field public static final OPP_VALUE:I = 0x14

.field public static final enum PAN:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

.field public static final PAN_VALUE:I = 0x5

.field public static final enum PBAP:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

.field public static final enum PBAP_CLIENT:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

.field public static final PBAP_CLIENT_VALUE:I = 0x11

.field public static final PBAP_VALUE:I = 0x6

.field public static final enum PROFILE_UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

.field public static final PROFILE_UNKNOWN_VALUE:I = 0x0

.field public static final enum SAP:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

.field public static final SAP_VALUE:I = 0xa

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 142
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    const-string v1, "PROFILE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->PROFILE_UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    .line 146
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    const-string v1, "HEADSET"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->HEADSET:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    .line 150
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    const-string v1, "A2DP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->A2DP:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    .line 154
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    const-string v1, "HEALTH"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->HEALTH:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    .line 158
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    const-string v1, "HID_HOST"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->HID_HOST:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    .line 162
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    const-string v1, "PAN"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->PAN:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    .line 166
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    const-string v1, "PBAP"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->PBAP:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    .line 170
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    const-string v1, "GATT"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->GATT:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    .line 174
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    const-string v1, "GATT_SERVER"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->GATT_SERVER:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    .line 178
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    const-string v1, "MAP"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->MAP:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    .line 182
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    const-string v1, "SAP"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->SAP:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    .line 186
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    const-string v1, "A2DP_SINK"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->A2DP_SINK:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    .line 190
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    const-string v1, "AVRCP_CONTROLLER"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v14}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->AVRCP_CONTROLLER:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    .line 194
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    const-string v1, "AVRCP"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v15}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->AVRCP:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    .line 198
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    const-string v1, "HEADSET_CLIENT"

    const/16 v15, 0xe

    const/16 v14, 0x10

    invoke-direct {v0, v1, v15, v14}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->HEADSET_CLIENT:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    .line 202
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    const-string v1, "PBAP_CLIENT"

    const/16 v15, 0xf

    const/16 v13, 0x11

    invoke-direct {v0, v1, v15, v13}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->PBAP_CLIENT:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    .line 206
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    const-string v1, "MAP_CLIENT"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v14, v15}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->MAP_CLIENT:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    .line 210
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    const-string v1, "HID_DEVICE"

    const/16 v14, 0x13

    invoke-direct {v0, v1, v13, v14}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->HID_DEVICE:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    .line 214
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    const-string v1, "OPP"

    const/16 v13, 0x14

    invoke-direct {v0, v1, v15, v13}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->OPP:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    .line 218
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    const-string v1, "HEARING_AID"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v14, v15}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->HEARING_AID:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    .line 137
    new-array v1, v13, [Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    sget-object v13, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->PROFILE_UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    aput-object v13, v1, v2

    sget-object v2, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->HEADSET:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->A2DP:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->HEALTH:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->HID_HOST:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->PAN:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->PBAP:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->GATT:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    aput-object v2, v1, v9

    sget-object v2, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->GATT_SERVER:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    aput-object v2, v1, v10

    sget-object v2, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->MAP:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    aput-object v2, v1, v11

    sget-object v2, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->SAP:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    aput-object v2, v1, v12

    sget-object v2, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->A2DP_SINK:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->AVRCP_CONTROLLER:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->AVRCP:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->HEADSET_CLIENT:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->PBAP_CLIENT:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->MAP_CLIENT:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->HID_DEVICE:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->OPP:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    aput-object v0, v1, v14

    sput-object v1, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->$VALUES:[Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    .line 347
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId$1;

    invoke-direct {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId$1;-><init>()V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 371
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 372
    iput p3, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->value:I

    .line 373
    return-void
.end method

.method public static forNumber(I)Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;
    .locals 0

    .line 317
    packed-switch p0, :pswitch_data_0

    .line 338
    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    .line 337
    :pswitch_1
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->HEARING_AID:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    return-object p0

    .line 336
    :pswitch_2
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->OPP:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    return-object p0

    .line 335
    :pswitch_3
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->HID_DEVICE:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    return-object p0

    .line 334
    :pswitch_4
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->MAP_CLIENT:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    return-object p0

    .line 333
    :pswitch_5
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->PBAP_CLIENT:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    return-object p0

    .line 332
    :pswitch_6
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->HEADSET_CLIENT:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    return-object p0

    .line 331
    :pswitch_7
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->AVRCP:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    return-object p0

    .line 330
    :pswitch_8
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->AVRCP_CONTROLLER:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    return-object p0

    .line 329
    :pswitch_9
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->A2DP_SINK:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    return-object p0

    .line 328
    :pswitch_a
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->SAP:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    return-object p0

    .line 327
    :pswitch_b
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->MAP:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    return-object p0

    .line 326
    :pswitch_c
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->GATT_SERVER:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    return-object p0

    .line 325
    :pswitch_d
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->GATT:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    return-object p0

    .line 324
    :pswitch_e
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->PBAP:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    return-object p0

    .line 323
    :pswitch_f
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->PAN:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    return-object p0

    .line 322
    :pswitch_10
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->HID_HOST:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    return-object p0

    .line 321
    :pswitch_11
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->HEALTH:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    return-object p0

    .line 320
    :pswitch_12
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->A2DP:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    return-object p0

    .line 319
    :pswitch_13
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->HEADSET:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    return-object p0

    .line 318
    :pswitch_14
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->PROFILE_UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;",
            ">;"
        }
    .end annotation

    .line 344
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 357
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId$ProfileIdVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 313
    invoke-static {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->forNumber(I)Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;
    .locals 1

    .line 137
    const-class v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    return-object p0
.end method

.method public static values()[Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;
    .locals 1

    .line 137
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->$VALUES:[Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    invoke-virtual {v0}, [Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 305
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->value:I

    return v0
.end method
