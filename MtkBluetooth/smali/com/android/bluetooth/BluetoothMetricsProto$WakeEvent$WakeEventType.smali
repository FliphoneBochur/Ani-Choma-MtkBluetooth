.class public final enum Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;
.super Ljava/lang/Enum;
.source "BluetoothMetricsProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WakeEventType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType$WakeEventTypeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;

.field public static final enum ACQUIRED:Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;

.field public static final ACQUIRED_VALUE:I = 0x1

.field public static final enum RELEASED:Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;

.field public static final RELEASED_VALUE:I = 0x2

.field public static final enum UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;

.field public static final UNKNOWN_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 7759
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;->UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;

    .line 7767
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;

    const-string v1, "ACQUIRED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;->ACQUIRED:Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;

    .line 7775
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;

    const-string v1, "RELEASED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;->RELEASED:Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;

    .line 7754
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;

    sget-object v5, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;->UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;->ACQUIRED:Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;->$VALUES:[Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;

    .line 7827
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType$1;

    invoke-direct {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType$1;-><init>()V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 7851
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7852
    iput p3, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;->value:I

    .line 7853
    return-void
.end method

.method public static forNumber(I)Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;
    .locals 1

    .line 7814
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 7818
    const/4 p0, 0x0

    return-object p0

    .line 7817
    :cond_0
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;->RELEASED:Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;

    return-object p0

    .line 7816
    :cond_1
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;->ACQUIRED:Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;

    return-object p0

    .line 7815
    :cond_2
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;->UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;",
            ">;"
        }
    .end annotation

    .line 7824
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 7837
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType$WakeEventTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7810
    invoke-static {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;->forNumber(I)Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;
    .locals 1

    .line 7754
    const-class v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;

    return-object p0
.end method

.method public static values()[Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;
    .locals 1

    .line 7754
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;->$VALUES:[Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;

    invoke-virtual {v0}, [Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 7802
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;->value:I

    return v0
.end method
