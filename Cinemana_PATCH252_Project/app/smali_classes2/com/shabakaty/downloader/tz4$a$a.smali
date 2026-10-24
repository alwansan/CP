.class public final Lcom/shabakaty/downloader/tz4$a$a;
.super Lcom/shabakaty/downloader/af2;
.source "ValueParameterDescriptorImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/tz4$a;->P0(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/hw2;I)Lcom/shabakaty/downloader/sz4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/util/List<",
        "+",
        "Lcom/shabakaty/downloader/uz4;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/tz4$a;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/tz4$a;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/tz4$a$a;->r:Lcom/shabakaty/downloader/tz4$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tz4$a$a;->r:Lcom/shabakaty/downloader/tz4$a;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/tz4$a;->C:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
