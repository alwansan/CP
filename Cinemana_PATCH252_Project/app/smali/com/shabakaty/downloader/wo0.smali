.class public Lcom/shabakaty/downloader/wo0;
.super Ljava/lang/Object;
.source "DefaultScheduler.java"

# interfaces
.implements Lcom/shabakaty/downloader/vx3;


# static fields
.field public static final f:Ljava/util/logging/Logger;


# instance fields
.field public final a:Lcom/shabakaty/downloader/b85;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lcom/shabakaty/downloader/gi;

.field public final d:Lcom/shabakaty/downloader/x51;

.field public final e:Lcom/shabakaty/downloader/fj4;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/yq4;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/wo0;->f:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/gi;Lcom/shabakaty/downloader/b85;Lcom/shabakaty/downloader/x51;Lcom/shabakaty/downloader/fj4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/wo0;->b:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/wo0;->c:Lcom/shabakaty/downloader/gi;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/wo0;->a:Lcom/shabakaty/downloader/b85;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/wo0;->d:Lcom/shabakaty/downloader/x51;

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/wo0;->e:Lcom/shabakaty/downloader/fj4;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/oq4;Lcom/shabakaty/downloader/n51;Lcom/shabakaty/downloader/br4;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wo0;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/shabakaty/downloader/hy1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/shabakaty/downloader/hy1;-><init>(Lcom/shabakaty/downloader/wo0;Lcom/shabakaty/downloader/oq4;Lcom/shabakaty/downloader/br4;Lcom/shabakaty/downloader/n51;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
