.class public final enum Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;
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
    name = "ScanTechnologyType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType$ScanTechnologyTypeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;

.field public static final enum SCAN_TECH_TYPE_BOTH:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;

.field public static final SCAN_TECH_TYPE_BOTH_VALUE:I = 0x3

.field public static final enum SCAN_TECH_TYPE_BREDR:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;

.field public static final SCAN_TECH_TYPE_BREDR_VALUE:I = 0x2

.field public static final enum SCAN_TECH_TYPE_LE:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;

.field public static final SCAN_TECH_TYPE_LE_VALUE:I = 0x1

.field public static final enum SCAN_TYPE_UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;

.field public static final SCAN_TYPE_UNKNOWN_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 8664
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;

    const-string v1, "SCAN_TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;->SCAN_TYPE_UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;

    .line 8668
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;

    const-string v1, "SCAN_TECH_TYPE_LE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;->SCAN_TECH_TYPE_LE:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;

    .line 8672
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;

    const-string v1, "SCAN_TECH_TYPE_BREDR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;->SCAN_TECH_TYPE_BREDR:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;

    .line 8676
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;

    const-string v1, "SCAN_TECH_TYPE_BOTH"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;->SCAN_TECH_TYPE_BOTH:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;

    .line 8659
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;

    sget-object v6, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;->SCAN_TYPE_UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;

    aput-object v6, v1, v2

    sget-object v2, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;->SCAN_TECH_TYPE_LE:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;->SCAN_TECH_TYPE_BREDR:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;->$VALUES:[Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;

    .line 8725
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType$1;

    invoke-direct {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType$1;-><init>()V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 8749
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8750
    iput p3, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;->value:I

    .line 8751
    return-void
.end method

.method public static forNumber(I)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;
    .locals 1

    .line 8711
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 8716
    const/4 p0, 0x0

    return-object p0

    .line 8715
    :cond_0
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;->SCAN_TECH_TYPE_BOTH:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;

    return-object p0

    .line 8714
    :cond_1
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;->SCAN_TECH_TYPE_BREDR:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;

    return-object p0

    .line 8713
    :cond_2
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;->SCAN_TECH_TYPE_LE:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;

    return-object p0

    .line 8712
    :cond_3
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;->SCAN_TYPE_UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;",
            ">;"
        }
    .end annotation

    .line 8722
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 8735
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType$ScanTechnologyTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8707
    invoke-static {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;->forNumber(I)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;
    .locals 1

    .line 8659
    const-class v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;

    return-object p0
.end method

.method public static values()[Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;
    .locals 1

    .line 8659
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;->$VALUES:[Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;

    invoke-virtual {v0}, [Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 8699
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;->value:I

    return v0
.end method
