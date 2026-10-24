.class public final Lcom/shabakaty/downloader/jh3$b;
.super Lcom/shabakaty/downloader/af2;
.source "ProgressDrawable.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/jh3;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Landroid/graphics/Paint;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/jh3;

.field public final synthetic s:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/jh3;I)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/jh3$b;->r:Lcom/shabakaty/downloader/jh3;

    iput p2, p0, Lcom/shabakaty/downloader/jh3$b;->s:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/jh3$b;->r:Lcom/shabakaty/downloader/jh3;

    iget v1, p0, Lcom/shabakaty/downloader/jh3$b;->s:I

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/jh3;->a(Lcom/shabakaty/downloader/jh3;I)Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method
