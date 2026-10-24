.class public final Lcom/shabakaty/cinemana/ca1/Lease115$Lease;
.super Ljava/lang/Object;
.source "Lease115.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/Lease115;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lease"
.end annotation


# instance fields
.field final attempt:Ljava/lang/String;

.field closed:Z

.field final file:Ljava/io/RandomAccessFile;

.field final key:Ljava/lang/String;

.field final lock:Ljava/nio/channels/FileLock;

.field final owner:Ljava/lang/Object;

.field requestEpoch:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/io/RandomAccessFile;Ljava/nio/channels/FileLock;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/Lease115$Lease;->attempt:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Lease115$Lease;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/Lease115$Lease;->owner:Ljava/lang/Object;

    iput-object p3, p0, Lcom/shabakaty/cinemana/ca1/Lease115$Lease;->file:Ljava/io/RandomAccessFile;

    iput-object p4, p0, Lcom/shabakaty/cinemana/ca1/Lease115$Lease;->lock:Ljava/nio/channels/FileLock;

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 14
    :try_start_0
    iget-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/Lease115$Lease;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/Lease115$Lease;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Lease115$Lease;->lock:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Lease115$Lease;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    sget-object v0, Lcom/shabakaty/cinemana/ca1/Lease115;->owners:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Lease115$Lease;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Lease115$Lease;->owner:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object v0, Lcom/shabakaty/cinemana/ca1/Lease115;->current:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    sget-object v0, Lcom/shabakaty/cinemana/ca1/Lease115;->current:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/shabakaty/cinemana/ca1/Lease115;->owners:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Lease115$Lease;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/Lease115$Lease;->owner:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object v1, Lcom/shabakaty/cinemana/ca1/Lease115;->current:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_2

    sget-object v1, Lcom/shabakaty/cinemana/ca1/Lease115;->current:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_2
    :goto_1
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_1
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Lease115$Lease;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    sget-object v1, Lcom/shabakaty/cinemana/ca1/Lease115;->owners:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Lease115$Lease;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/Lease115$Lease;->owner:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object v1, Lcom/shabakaty/cinemana/ca1/Lease115;->current:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_2

    sget-object v1, Lcom/shabakaty/cinemana/ca1/Lease115;->current:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_1

    :catchall_2
    move-exception v0

    sget-object v1, Lcom/shabakaty/cinemana/ca1/Lease115;->owners:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Lease115$Lease;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/Lease115$Lease;->owner:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object v1, Lcom/shabakaty/cinemana/ca1/Lease115;->current:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_2

    sget-object v1, Lcom/shabakaty/cinemana/ca1/Lease115;->current:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_1

    .line 14
    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method
