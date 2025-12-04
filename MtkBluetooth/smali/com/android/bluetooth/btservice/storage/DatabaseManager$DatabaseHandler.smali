.class Lcom/android/bluetooth/btservice/storage/DatabaseManager$DatabaseHandler;
.super Landroid/os/Handler;
.source "DatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/storage/DatabaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DatabaseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/storage/DatabaseManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/storage/DatabaseManager;Landroid/os/Looper;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager$DatabaseHandler;->this$0:Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    .line 124
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 125
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 129
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 p1, 0x64

    if-eq v0, p1, :cond_0

    goto/16 :goto_1

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager$DatabaseHandler;->this$0:Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->access$000(Lcom/android/bluetooth/btservice/storage/DatabaseManager;)Lcom/android/bluetooth/btservice/storage/MetadataDatabase;

    move-result-object v0

    monitor-enter v0

    .line 162
    :try_start_0
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager$DatabaseHandler;->this$0:Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->access$000(Lcom/android/bluetooth/btservice/storage/DatabaseManager;)Lcom/android/bluetooth/btservice/storage/MetadataDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;->deleteAll()V

    .line 163
    monitor-exit v0

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 154
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager$DatabaseHandler;->this$0:Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->access$000(Lcom/android/bluetooth/btservice/storage/DatabaseManager;)Lcom/android/bluetooth/btservice/storage/MetadataDatabase;

    move-result-object v0

    monitor-enter v0

    .line 156
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager$DatabaseHandler;->this$0:Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    invoke-static {v1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->access$000(Lcom/android/bluetooth/btservice/storage/DatabaseManager;)Lcom/android/bluetooth/btservice/storage/MetadataDatabase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;->delete(Ljava/lang/String;)V

    .line 157
    monitor-exit v0

    .line 158
    goto :goto_1

    .line 157
    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 147
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/btservice/storage/Metadata;

    .line 148
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager$DatabaseHandler;->this$0:Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->access$000(Lcom/android/bluetooth/btservice/storage/DatabaseManager;)Lcom/android/bluetooth/btservice/storage/MetadataDatabase;

    move-result-object v0

    monitor-enter v0

    .line 149
    :try_start_2
    iget-object v2, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager$DatabaseHandler;->this$0:Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    invoke-static {v2}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->access$000(Lcom/android/bluetooth/btservice/storage/DatabaseManager;)Lcom/android/bluetooth/btservice/storage/MetadataDatabase;

    move-result-object v2

    new-array v1, v1, [Lcom/android/bluetooth/btservice/storage/Metadata;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;->insert([Lcom/android/bluetooth/btservice/storage/Metadata;)V

    .line 150
    monitor-exit v0

    .line 151
    goto :goto_1

    .line 150
    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    .line 131
    :cond_3
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager$DatabaseHandler;->this$0:Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->access$000(Lcom/android/bluetooth/btservice/storage/DatabaseManager;)Lcom/android/bluetooth/btservice/storage/MetadataDatabase;

    move-result-object p1

    monitor-enter p1

    .line 134
    :try_start_3
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager$DatabaseHandler;->this$0:Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->access$000(Lcom/android/bluetooth/btservice/storage/DatabaseManager;)Lcom/android/bluetooth/btservice/storage/MetadataDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;->load()Ljava/util/List;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 140
    goto :goto_0

    .line 143
    :catchall_3
    move-exception v0

    goto :goto_2

    .line 135
    :catch_0
    move-exception v0

    .line 136
    :try_start_4
    const-string v1, "BluetoothDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open database: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager$DatabaseHandler;->this$0:Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager$DatabaseHandler;->this$0:Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    .line 138
    invoke-static {v1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->access$100(Lcom/android/bluetooth/btservice/storage/DatabaseManager;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;->createDatabaseWithoutMigration(Landroid/content/Context;)Lcom/android/bluetooth/btservice/storage/MetadataDatabase;

    move-result-object v1

    .line 137
    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->access$002(Lcom/android/bluetooth/btservice/storage/DatabaseManager;Lcom/android/bluetooth/btservice/storage/MetadataDatabase;)Lcom/android/bluetooth/btservice/storage/MetadataDatabase;

    .line 139
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager$DatabaseHandler;->this$0:Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->access$000(Lcom/android/bluetooth/btservice/storage/DatabaseManager;)Lcom/android/bluetooth/btservice/storage/MetadataDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;->load()Ljava/util/List;

    move-result-object v0

    .line 141
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager$DatabaseHandler;->this$0:Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    invoke-static {v1, v0}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->access$200(Lcom/android/bluetooth/btservice/storage/DatabaseManager;Ljava/util/List;)V

    .line 142
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager$DatabaseHandler;->this$0:Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->cacheMetadata(Ljava/util/List;)V

    .line 143
    monitor-exit p1

    .line 144
    nop

    .line 167
    :goto_1
    return-void

    .line 143
    :goto_2
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0
.end method
