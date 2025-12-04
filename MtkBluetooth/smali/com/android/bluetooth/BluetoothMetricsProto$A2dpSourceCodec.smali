.class public final enum Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;
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
    name = "A2dpSourceCodec"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec$A2dpSourceCodecVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

.field public static final enum A2DP_SOURCE_CODEC_AAC:Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

.field public static final A2DP_SOURCE_CODEC_AAC_VALUE:I = 0x2

.field public static final enum A2DP_SOURCE_CODEC_APTX:Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

.field public static final enum A2DP_SOURCE_CODEC_APTX_HD:Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

.field public static final A2DP_SOURCE_CODEC_APTX_HD_VALUE:I = 0x4

.field public static final A2DP_SOURCE_CODEC_APTX_VALUE:I = 0x3

.field public static final enum A2DP_SOURCE_CODEC_LDAC:Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

.field public static final A2DP_SOURCE_CODEC_LDAC_VALUE:I = 0x5

.field public static final enum A2DP_SOURCE_CODEC_SBC:Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

.field public static final A2DP_SOURCE_CODEC_SBC_VALUE:I = 0x1

.field public static final enum A2DP_SOURCE_CODEC_UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

.field public static final A2DP_SOURCE_CODEC_UNKNOWN_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 19
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

    const-string v1, "A2DP_SOURCE_CODEC_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;->A2DP_SOURCE_CODEC_UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

    .line 23
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

    const-string v1, "A2DP_SOURCE_CODEC_SBC"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;->A2DP_SOURCE_CODEC_SBC:Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

    .line 27
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

    const-string v1, "A2DP_SOURCE_CODEC_AAC"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;->A2DP_SOURCE_CODEC_AAC:Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

    .line 31
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

    const-string v1, "A2DP_SOURCE_CODEC_APTX"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;->A2DP_SOURCE_CODEC_APTX:Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

    .line 35
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

    const-string v1, "A2DP_SOURCE_CODEC_APTX_HD"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;->A2DP_SOURCE_CODEC_APTX_HD:Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

    .line 39
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

    const-string v1, "A2DP_SOURCE_CODEC_LDAC"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;->A2DP_SOURCE_CODEC_LDAC:Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

    .line 14
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

    sget-object v8, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;->A2DP_SOURCE_CODEC_UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

    aput-object v8, v1, v2

    sget-object v2, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;->A2DP_SOURCE_CODEC_SBC:Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;->A2DP_SOURCE_CODEC_AAC:Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;->A2DP_SOURCE_CODEC_APTX:Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;->A2DP_SOURCE_CODEC_APTX_HD:Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;->$VALUES:[Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

    .line 98
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec$1;

    invoke-direct {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec$1;-><init>()V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 123
    iput p3, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;->value:I

    .line 124
    return-void
.end method

.method public static forNumber(I)Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;
    .locals 1

    .line 82
    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 89
    const/4 p0, 0x0

    return-object p0

    .line 88
    :cond_0
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;->A2DP_SOURCE_CODEC_LDAC:Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

    return-object p0

    .line 87
    :cond_1
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;->A2DP_SOURCE_CODEC_APTX_HD:Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

    return-object p0

    .line 86
    :cond_2
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;->A2DP_SOURCE_CODEC_APTX:Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

    return-object p0

    .line 85
    :cond_3
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;->A2DP_SOURCE_CODEC_AAC:Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

    return-object p0

    .line 84
    :cond_4
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;->A2DP_SOURCE_CODEC_SBC:Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

    return-object p0

    .line 83
    :cond_5
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;->A2DP_SOURCE_CODEC_UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;",
            ">;"
        }
    .end annotation

    .line 95
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 108
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec$A2dpSourceCodecVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 78
    invoke-static {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;->forNumber(I)Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;
    .locals 1

    .line 14
    const-class v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

    return-object p0
.end method

.method public static values()[Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;
    .locals 1

    .line 14
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;->$VALUES:[Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

    invoke-virtual {v0}, [Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;->value:I

    return v0
.end method
