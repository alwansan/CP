.class public final Lcom/shabakaty/downloader/xr0$a$d;
.super Lcom/shabakaty/downloader/af2;
.source "DeserializedClassDescriptor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/xr0$a;-><init>(Lcom/shabakaty/downloader/xr0;Lcom/shabakaty/downloader/ve2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/util/Collection<",
        "+",
        "Lcom/shabakaty/downloader/qe2;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/xr0$a;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xr0$a;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/xr0$a$d;->r:Lcom/shabakaty/downloader/xr0$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xr0$a$d;->r:Lcom/shabakaty/downloader/xr0$a;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/xr0$a;->g:Lcom/shabakaty/downloader/ve2;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/xr0$a;->j:Lcom/shabakaty/downloader/xr0;

    .line 4
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/ve2;->g(Lcom/shabakaty/downloader/q20;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
