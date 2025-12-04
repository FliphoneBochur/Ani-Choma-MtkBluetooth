.class public final synthetic Lcom/android/bluetooth/a2dp/-$$Lambda$A2dpCodecConfig$Z31bjDKQd5WGjL5Ubtje4JP3xHE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/bluetooth/a2dp/-$$Lambda$A2dpCodecConfig$Z31bjDKQd5WGjL5Ubtje4JP3xHE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/bluetooth/a2dp/-$$Lambda$A2dpCodecConfig$Z31bjDKQd5WGjL5Ubtje4JP3xHE;

    invoke-direct {v0}, Lcom/android/bluetooth/a2dp/-$$Lambda$A2dpCodecConfig$Z31bjDKQd5WGjL5Ubtje4JP3xHE;-><init>()V

    sput-object v0, Lcom/android/bluetooth/a2dp/-$$Lambda$A2dpCodecConfig$Z31bjDKQd5WGjL5Ubtje4JP3xHE;->INSTANCE:Lcom/android/bluetooth/a2dp/-$$Lambda$A2dpCodecConfig$Z31bjDKQd5WGjL5Ubtje4JP3xHE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/bluetooth/BluetoothCodecConfig;

    invoke-static {p1}, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->lambda$setCodecConfigPreference$0(Landroid/bluetooth/BluetoothCodecConfig;)Z

    move-result p1

    return p1
.end method
