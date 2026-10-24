.class public final Lcom/shabakaty/downloader/a91$a$a;
.super Lcom/shabakaty/downloader/xd0;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.downloader.ExtensionsKt$findWithExternalId$$inlined$filter$1$2"
    f = "Extensions.kt"
    l = {
        0x87
    }
    m = "emit"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/a91$a;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public synthetic u:Ljava/lang/Object;

.field public v:I

.field public final synthetic w:Lcom/shabakaty/downloader/a91$a;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/a91$a;Lcom/shabakaty/downloader/ud0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/a91$a$a;->w:Lcom/shabakaty/downloader/a91$a;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/xd0;-><init>(Lcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/shabakaty/downloader/a91$a$a;->u:Ljava/lang/Object;

    iget p1, p0, Lcom/shabakaty/downloader/a91$a$a;->v:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/shabakaty/downloader/a91$a$a;->v:I

    iget-object p1, p0, Lcom/shabakaty/downloader/a91$a$a;->w:Lcom/shabakaty/downloader/a91$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/shabakaty/downloader/a91$a;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
