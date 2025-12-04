.class public final enum Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;
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
    name = "DisconnectReasonType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType$DisconnectReasonTypeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;

.field public static final enum METRICS_DUMP:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;

.field public static final METRICS_DUMP_VALUE:I = 0x1

.field public static final enum NEXT_START_WITHOUT_END_PREVIOUS:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;

.field public static final NEXT_START_WITHOUT_END_PREVIOUS_VALUE:I = 0x2

.field public static final enum UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;

.field public static final UNKNOWN_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4145
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;->UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;

    .line 4155
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;

    const-string v1, "METRICS_DUMP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;->METRICS_DUMP:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;

    .line 4159
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;

    const-string v1, "NEXT_START_WITHOUT_END_PREVIOUS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;->NEXT_START_WITHOUT_END_PREVIOUS:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;

    .line 4140
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;

    sget-object v5, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;->UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;->METRICS_DUMP:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;->$VALUES:[Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;

    .line 4209
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType$1;

    invoke-direct {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType$1;-><init>()V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 4233
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4234
    iput p3, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;->value:I

    .line 4235
    return-void
.end method

.method public static forNumber(I)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;
    .locals 1

    .line 4196
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 4200
    const/4 p0, 0x0

    return-object p0

    .line 4199
    :cond_0
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;->NEXT_START_WITHOUT_END_PREVIOUS:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;

    return-object p0

    .line 4198
    :cond_1
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;->METRICS_DUMP:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;

    return-object p0

    .line 4197
    :cond_2
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;->UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;",
            ">;"
        }
    .end annotation

    .line 4206
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 4219
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType$DisconnectReasonTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4192
    invoke-static {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;->forNumber(I)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;
    .locals 1

    .line 4140
    const-class v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;

    return-object p0
.end method

.method public static values()[Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;
    .locals 1

    .line 4140
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;->$VALUES:[Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;

    invoke-virtual {v0}, [Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 4184
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;->value:I

    return v0
.end method
