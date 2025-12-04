.class Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;
.super Ljava/lang/Object;
.source "PanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pan/PanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothPanDevice"
.end annotation


# instance fields
.field private mIface:Ljava/lang/String;

.field private mLocalRole:I

.field private mRemoteRole:I

.field private mState:I

.field final synthetic this$0:Lcom/android/bluetooth/pan/PanService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pan/PanService;ILjava/lang/String;II)V
    .locals 0

    .line 785
    iput-object p1, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 786
    iput p2, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mState:I

    .line 787
    iput-object p3, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mIface:Ljava/lang/String;

    .line 788
    iput p4, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mLocalRole:I

    .line 789
    iput p5, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mRemoteRole:I

    .line 790
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;)I
    .locals 0

    .line 779
    iget p0, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mLocalRole:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;I)I
    .locals 0

    .line 779
    iput p1, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mLocalRole:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;)I
    .locals 0

    .line 779
    iget p0, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mRemoteRole:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;)I
    .locals 0

    .line 779
    iget p0, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mState:I

    return p0
.end method

.method static synthetic access$1002(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;I)I
    .locals 0

    .line 779
    iput p1, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mState:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;I)I
    .locals 0

    .line 779
    iput p1, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mRemoteRole:I

    return p1
.end method

.method static synthetic access$1102(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 779
    iput-object p1, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mIface:Ljava/lang/String;

    return-object p1
.end method
