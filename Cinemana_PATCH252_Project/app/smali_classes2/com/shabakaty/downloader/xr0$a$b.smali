.class public final Lcom/shabakaty/downloader/xr0$a$b;
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
        "Lcom/shabakaty/downloader/qm0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/xr0$a;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xr0$a;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/xr0$a$b;->r:Lcom/shabakaty/downloader/xr0$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xr0$a$b;->r:Lcom/shabakaty/downloader/xr0$a;

    sget-object v1, Lcom/shabakaty/downloader/vq0;->m:Lcom/shabakaty/downloader/vq0;

    sget-object v2, Lcom/shabakaty/downloader/mr2;->a:Lcom/shabakaty/downloader/mr2$a;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v2, Lcom/shabakaty/downloader/mr2$a;->b:Lcom/shabakaty/downloader/tm1;

    .line 3
    sget-object v3, Lcom/shabakaty/downloader/mz2;->D:Lcom/shabakaty/downloader/mz2;

    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/ds0;->i(Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
