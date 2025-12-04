.class interface abstract Lcom/android/bluetooth/btservice/storage/MetadataDao;
.super Ljava/lang/Object;
.source "MetadataDao.java"


# virtual methods
.method public abstract delete(Ljava/lang/String;)V
.end method

.method public abstract deleteAll()V
.end method

.method public varargs abstract insert([Lcom/android/bluetooth/btservice/storage/Metadata;)V
.end method

.method public abstract load()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/btservice/storage/Metadata;",
            ">;"
        }
    .end annotation
.end method
