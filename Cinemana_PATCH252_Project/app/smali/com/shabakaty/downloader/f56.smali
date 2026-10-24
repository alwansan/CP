.class public final synthetic Lcom/shabakaty/downloader/f56;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.1.1"

# interfaces
.implements Lcom/shabakaty/downloader/t80;


# static fields
.field public static final a:Lcom/shabakaty/downloader/t80;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/f56;

    invoke-direct {v0}, Lcom/shabakaty/downloader/f56;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/f56;->a:Lcom/shabakaty/downloader/t80;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/q80;)Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/j30;

    .line 2
    invoke-direct {p1}, Lcom/shabakaty/downloader/j30;-><init>()V

    sget-object v0, Lcom/shabakaty/downloader/ud5;->r:Ljava/lang/Runnable;

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/yz5;

    iget-object v2, p1, Lcom/shabakaty/downloader/j30;->a:Ljava/lang/ref/ReferenceQueue;

    iget-object v3, p1, Lcom/shabakaty/downloader/j30;->b:Ljava/util/Set;

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/shabakaty/downloader/yz5;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;Ljava/lang/Runnable;)V

    iget-object v0, p1, Lcom/shabakaty/downloader/j30;->b:Ljava/util/Set;

    .line 4
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p1, Lcom/shabakaty/downloader/j30;->a:Ljava/lang/ref/ReferenceQueue;

    iget-object v1, p1, Lcom/shabakaty/downloader/j30;->b:Ljava/util/Set;

    new-instance v2, Lcom/shabakaty/downloader/md7;

    .line 6
    invoke-direct {v2, v0, v1}, Lcom/shabakaty/downloader/md7;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;)V

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MlKitCleaner"

    .line 7
    invoke-direct {v0, v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 9
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object p1
.end method
