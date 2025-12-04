.class Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;
.super Ljava/lang/Object;
.source "BluetoothPbapUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactData"
.end annotation


# instance fields
.field private mAddress:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEmail:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mPhone:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;->mPhone:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;->mEmail:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;->mAddress:Ljava/util/ArrayList;

    .line 78
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;->mName:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;->mPhone:Ljava/util/ArrayList;

    .line 84
    iput-object p3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;->mEmail:Ljava/util/ArrayList;

    .line 85
    iput-object p4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;->mAddress:Ljava/util/ArrayList;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;)Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;)Ljava/util/ArrayList;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;->mPhone:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;)Ljava/util/ArrayList;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;->mEmail:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;)Ljava/util/ArrayList;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;->mAddress:Ljava/util/ArrayList;

    return-object p0
.end method
