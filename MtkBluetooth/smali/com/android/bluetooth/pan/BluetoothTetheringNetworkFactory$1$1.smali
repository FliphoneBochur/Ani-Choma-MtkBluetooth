.class Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1$1;
.super Landroid/net/NetworkAgent;
.source "BluetoothTetheringNetworkFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;)V
    .locals 9

    .line 191
    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1$1;->this$1:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Landroid/net/NetworkAgent;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;)V

    return-void
.end method


# virtual methods
.method public unwanted()V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1$1;->this$1:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;

    iget-object v0, v0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-static {v0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->access$1100(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)V

    .line 195
    return-void
.end method
