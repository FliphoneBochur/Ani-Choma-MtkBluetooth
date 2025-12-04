.class final Lcom/android/bluetooth/opp/BluetoothOppProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BluetoothOppProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppProvider;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppProvider;Landroid/content/Context;)V
    .locals 2

    .line 105
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppProvider$DatabaseHelper;->this$0:Lcom/android/bluetooth/opp/BluetoothOppProvider;

    .line 106
    const-string p1, "btopp.db"

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p2, p1, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 107
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 114
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppProvider;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "BluetoothOppProvider"

    const-string v1, "populating new database"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppProvider$DatabaseHelper;->this$0:Lcom/android/bluetooth/opp/BluetoothOppProvider;

    invoke-static {v0, p1}, Lcom/android/bluetooth/opp/BluetoothOppProvider;->access$100(Lcom/android/bluetooth/opp/BluetoothOppProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 118
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 126
    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 127
    if-ne p3, v0, :cond_0

    .line 128
    return-void

    .line 132
    :cond_0
    move p2, v0

    .line 134
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upgrading downloads database from version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", which will destroy all old data"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BluetoothOppProvider"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppProvider$DatabaseHelper;->this$0:Lcom/android/bluetooth/opp/BluetoothOppProvider;

    invoke-static {p2, p1}, Lcom/android/bluetooth/opp/BluetoothOppProvider;->access$200(Lcom/android/bluetooth/opp/BluetoothOppProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 137
    iget-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppProvider$DatabaseHelper;->this$0:Lcom/android/bluetooth/opp/BluetoothOppProvider;

    invoke-static {p2, p1}, Lcom/android/bluetooth/opp/BluetoothOppProvider;->access$100(Lcom/android/bluetooth/opp/BluetoothOppProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 138
    return-void
.end method
