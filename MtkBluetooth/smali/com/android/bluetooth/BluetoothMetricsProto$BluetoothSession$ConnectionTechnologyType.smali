.class public final enum Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;
.super Ljava/lang/Enum;
.source "BluetoothMetricsProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionTechnologyType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType$ConnectionTechnologyTypeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;

.field public static final enum CONNECTION_TECHNOLOGY_TYPE_BREDR:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;

.field public static final CONNECTION_TECHNOLOGY_TYPE_BREDR_VALUE:I = 0x2

.field public static final enum CONNECTION_TECHNOLOGY_TYPE_LE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;

.field public static final CONNECTION_TECHNOLOGY_TYPE_LE_VALUE:I = 0x1

.field public static final enum CONNECTION_TECHNOLOGY_TYPE_UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;

.field public static final CONNECTION_TECHNOLOGY_TYPE_UNKNOWN_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4054
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;

    const-string v1, "CONNECTION_TECHNOLOGY_TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;->CONNECTION_TECHNOLOGY_TYPE_UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;

    .line 4058
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;

    const-string v1, "CONNECTION_TECHNOLOGY_TYPE_LE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;->CONNECTION_TECHNOLOGY_TYPE_LE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;

    .line 4062
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;

    const-string v1, "CONNECTION_TECHNOLOGY_TYPE_BREDR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;->CONNECTION_TECHNOLOGY_TYPE_BREDR:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;

    .line 4049
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;

    sget-object v5, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;->CONNECTION_TECHNOLOGY_TYPE_UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;->CONNECTION_TECHNOLOGY_TYPE_LE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;->$VALUES:[Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;

    .line 4106
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType$1;

    invoke-direct {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType$1;-><init>()V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 4130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4131
    iput p3, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;->value:I

    .line 4132
    return-void
.end method

.method public static forNumber(I)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;
    .locals 1

    .line 4093
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 4097
    const/4 p0, 0x0

    return-object p0

    .line 4096
    :cond_0
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;->CONNECTION_TECHNOLOGY_TYPE_BREDR:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;

    return-object p0

    .line 4095
    :cond_1
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;->CONNECTION_TECHNOLOGY_TYPE_LE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;

    return-object p0

    .line 4094
    :cond_2
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;->CONNECTION_TECHNOLOGY_TYPE_UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;",
            ">;"
        }
    .end annotation

    .line 4103
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 4116
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType$ConnectionTechnologyTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4089
    invoke-static {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;->forNumber(I)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;
    .locals 1

    .line 4049
    const-class v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;

    return-object p0
.end method

.method public static values()[Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;
    .locals 1

    .line 4049
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;->$VALUES:[Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;

    invoke-virtual {v0}, [Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 4081
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;->value:I

    return v0
.end method
