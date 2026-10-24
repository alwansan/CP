.class public final Lcom/shabakaty/downloader/n24$g;
.super Lcom/shabakaty/downloader/xd0;
.source "Settings.kt"


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.utils.user.Settings"
    f = "Settings.kt"
    l = {
        0x8d
    }
    m = "stageParentalLevel"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/n24;->p(Lcom/shabakaty/downloader/ia3;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public u:Ljava/lang/Object;

.field public synthetic v:Ljava/lang/Object;

.field public final synthetic w:Lcom/shabakaty/downloader/n24;

.field public x:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/n24;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/n24;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/n24$g;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/n24$g;->w:Lcom/shabakaty/downloader/n24;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/xd0;-><init>(Lcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/shabakaty/downloader/n24$g;->v:Ljava/lang/Object;

    iget p1, p0, Lcom/shabakaty/downloader/n24$g;->x:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/shabakaty/downloader/n24$g;->x:I

    iget-object p1, p0, Lcom/shabakaty/downloader/n24$g;->w:Lcom/shabakaty/downloader/n24;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/shabakaty/downloader/n24;->p(Lcom/shabakaty/downloader/ia3;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
