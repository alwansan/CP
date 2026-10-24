.class public final Lcom/shabakaty/downloader/wq0$k;
.super Ljava/lang/Object;
.source "DescriptorRenderer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/wq0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "k"
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nn0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/wq0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/cr0;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Lcom/shabakaty/downloader/wq0;"
        }
    .end annotation

    const-string v0, "changeOptions"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/dr0;

    invoke-direct {v0}, Lcom/shabakaty/downloader/dr0;-><init>()V

    .line 2
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, v0, Lcom/shabakaty/downloader/dr0;->a:Z

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/xq0;

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/xq0;-><init>(Lcom/shabakaty/downloader/dr0;)V

    return-object p1
.end method
