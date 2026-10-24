.class public final Lcom/shabakaty/downloader/er0;
.super Lcom/shabakaty/downloader/g53;
.source "Delegates.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/g53<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/shabakaty/downloader/dr0;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/shabakaty/downloader/dr0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/er0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/er0;->c:Lcom/shabakaty/downloader/dr0;

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/g53;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public d(Lcom/shabakaty/downloader/jd2;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/jd2<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/er0;->c:Lcom/shabakaty/downloader/dr0;

    .line 2
    iget-boolean p1, p1, Lcom/shabakaty/downloader/dr0;->a:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot modify readonly DescriptorRendererOptions"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
