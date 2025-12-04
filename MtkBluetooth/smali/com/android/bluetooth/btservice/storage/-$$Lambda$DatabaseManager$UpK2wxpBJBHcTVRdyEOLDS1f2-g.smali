.class public final synthetic Lcom/android/bluetooth/btservice/storage/-$$Lambda$DatabaseManager$UpK2wxpBJBHcTVRdyEOLDS1f2-g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/bluetooth/btservice/storage/DatabaseManager;

.field public final synthetic f$1:[Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/android/bluetooth/btservice/storage/DatabaseManager;[Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/btservice/storage/-$$Lambda$DatabaseManager$UpK2wxpBJBHcTVRdyEOLDS1f2-g;->f$0:Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    iput-object p2, p0, Lcom/android/bluetooth/btservice/storage/-$$Lambda$DatabaseManager$UpK2wxpBJBHcTVRdyEOLDS1f2-g;->f$1:[Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/-$$Lambda$DatabaseManager$UpK2wxpBJBHcTVRdyEOLDS1f2-g;->f$0:Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/-$$Lambda$DatabaseManager$UpK2wxpBJBHcTVRdyEOLDS1f2-g;->f$1:[Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/bluetooth/btservice/storage/Metadata;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->lambda$removeUnusedMetadata$2$DatabaseManager([Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Lcom/android/bluetooth/btservice/storage/Metadata;)V

    return-void
.end method
