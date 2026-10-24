.class public final Lcom/shabakaty/downloader/m34;
.super Lcom/shabakaty/downloader/xd0;
.source "SettingsUseCases.kt"


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.domain.use_cases.SettingsUseCases"
    f = "SettingsUseCases.kt"
    l = {
        0xa8,
        0xa8
    }
    m = "getUserOrGuestSettingsFromDb"
.end annotation


# instance fields
.field public u:Ljava/lang/Object;

.field public v:Ljava/lang/Object;

.field public synthetic w:Ljava/lang/Object;

.field public final synthetic x:Lcom/shabakaty/downloader/n34;

.field public y:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/n34;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/n34;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/m34;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/m34;->x:Lcom/shabakaty/downloader/n34;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/xd0;-><init>(Lcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/shabakaty/downloader/m34;->w:Ljava/lang/Object;

    iget p1, p0, Lcom/shabakaty/downloader/m34;->y:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/shabakaty/downloader/m34;->y:I

    iget-object p1, p0, Lcom/shabakaty/downloader/m34;->x:Lcom/shabakaty/downloader/n34;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/shabakaty/downloader/n34;->a(Lcom/shabakaty/downloader/n34;Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
