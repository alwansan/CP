.class public final Lcom/shabakaty/downloader/w91;
.super Lcom/shabakaty/downloader/s0;
.source "PlatformRandom.kt"


# instance fields
.field public final t:Lcom/shabakaty/downloader/w91$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/s0;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/w91$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/w91$a;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/w91;->t:Lcom/shabakaty/downloader/w91$a;

    return-void
.end method


# virtual methods
.method public b()Ljava/util/Random;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w91;->t:Lcom/shabakaty/downloader/w91$a;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "implStorage.get()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Random;

    return-object v0
.end method
