.class public final enum Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;
.super Ljava/lang/Enum;
.source "BluetoothMetricsProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScanEventType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType$ScanEventTypeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;

.field public static final enum SCAN_EVENT_START:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;

.field public static final SCAN_EVENT_START_VALUE:I = 0x0

.field public static final enum SCAN_EVENT_STOP:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;

.field public static final SCAN_EVENT_STOP_VALUE:I = 0x1

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8772
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;

    const-string v1, "SCAN_EVENT_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;->SCAN_EVENT_START:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;

    .line 8780
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;

    const-string v1, "SCAN_EVENT_STOP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;->SCAN_EVENT_STOP:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;

    .line 8763
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;

    sget-object v4, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;->SCAN_EVENT_START:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;->$VALUES:[Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;

    .line 8827
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType$1;

    invoke-direct {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType$1;-><init>()V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 8851
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8852
    iput p3, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;->value:I

    .line 8853
    return-void
.end method

.method public static forNumber(I)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;
    .locals 1

    .line 8815
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 8818
    const/4 p0, 0x0

    return-object p0

    .line 8817
    :cond_0
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;->SCAN_EVENT_STOP:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;

    return-object p0

    .line 8816
    :cond_1
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;->SCAN_EVENT_START:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;",
            ">;"
        }
    .end annotation

    .line 8824
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 8837
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType$ScanEventTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8811
    invoke-static {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;->forNumber(I)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;
    .locals 1

    .line 8763
    const-class v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;

    return-object p0
.end method

.method public static values()[Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;
    .locals 1

    .line 8763
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;->$VALUES:[Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;

    invoke-virtual {v0}, [Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 8803
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;->value:I

    return v0
.end method
