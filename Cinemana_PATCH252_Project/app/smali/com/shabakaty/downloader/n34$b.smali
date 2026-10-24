.class public final Lcom/shabakaty/downloader/n34$b;
.super Lcom/shabakaty/downloader/xd0;
.source "SettingsUseCases.kt"


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.domain.use_cases.SettingsUseCases"
    f = "SettingsUseCases.kt"
    l = {
        0x44,
        0x45,
        0x46,
        0x47,
        0x48,
        0x49
    }
    m = "resetSubtitlesSettings"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/n34;->c(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
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
            "Lcom/shabakaty/downloader/n34$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/n34$b;->x:Lcom/shabakaty/downloader/n34;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/xd0;-><init>(Lcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/shabakaty/downloader/n34$b;->w:Ljava/lang/Object;

    iget p1, p0, Lcom/shabakaty/downloader/n34$b;->y:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/shabakaty/downloader/n34$b;->y:I

    iget-object p1, p0, Lcom/shabakaty/downloader/n34$b;->x:Lcom/shabakaty/downloader/n34;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/shabakaty/downloader/n34;->c(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
