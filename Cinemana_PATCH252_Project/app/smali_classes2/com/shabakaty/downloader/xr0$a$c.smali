.class public final Lcom/shabakaty/downloader/xr0$a$c;
.super Lcom/shabakaty/downloader/yz2;
.source "DeserializedClassDescriptor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/xr0$a;->s(Lcom/shabakaty/downloader/hw2;Ljava/util/Collection;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TD;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TD;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/xr0$a$c;->a:Ljava/util/List;

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/yz2;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/tq;)V
    .locals 1

    const-string v0, "fakeOverride"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/a93;->r(Lcom/shabakaty/downloader/tq;Lcom/shabakaty/downloader/tm1;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/xr0$a$c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Lcom/shabakaty/downloader/tq;Lcom/shabakaty/downloader/tq;)V
    .locals 0

    return-void
.end method
