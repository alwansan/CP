.class public final Lcom/shabakaty/downloader/b44$a;
.super Lcom/shabakaty/downloader/ui4;
.source "SettingsUseCases.kt"

# interfaces
.implements Lcom/shabakaty/downloader/jn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.domain.use_cases.SettingsUseCases$settingsStateFlow$2$2"
    f = "SettingsUseCases.kt"
    l = {
        0xc6,
        0xe6
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/b44;->t(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/jn1<",
        "Lcom/shabakaty/downloader/ue1<",
        "-",
        "Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;",
        ">;",
        "Ljava/lang/Throwable;",
        "Lcom/shabakaty/downloader/ud0<",
        "-",
        "Lcom/shabakaty/downloader/qv4;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public v:I

.field public synthetic w:Ljava/lang/Object;

.field public final synthetic x:Lcom/shabakaty/downloader/n34;

.field public final synthetic y:Lcom/shabakaty/downloader/rm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rm1<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/n34;Lcom/shabakaty/downloader/rm1;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/n34;",
            "Lcom/shabakaty/downloader/rm1<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/b44$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/b44$a;->x:Lcom/shabakaty/downloader/n34;

    iput-object p2, p0, Lcom/shabakaty/downloader/b44$a;->y:Lcom/shabakaty/downloader/rm1;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/shabakaty/downloader/ue1;

    check-cast p2, Ljava/lang/Throwable;

    check-cast p3, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p2, Lcom/shabakaty/downloader/b44$a;

    iget-object v0, p0, Lcom/shabakaty/downloader/b44$a;->x:Lcom/shabakaty/downloader/n34;

    iget-object v1, p0, Lcom/shabakaty/downloader/b44$a;->y:Lcom/shabakaty/downloader/rm1;

    invoke-direct {p2, v0, v1, p3}, Lcom/shabakaty/downloader/b44$a;-><init>(Lcom/shabakaty/downloader/n34;Lcom/shabakaty/downloader/rm1;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, p2, Lcom/shabakaty/downloader/b44$a;->w:Ljava/lang/Object;

    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/b44$a;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/b44$a;->v:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/b44$a;->w:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/ue1;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/b44$a;->w:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/ue1;

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/b44$a;->x:Lcom/shabakaty/downloader/n34;

    iget-object v5, p0, Lcom/shabakaty/downloader/b44$a;->y:Lcom/shabakaty/downloader/rm1;

    iput-object v1, p0, Lcom/shabakaty/downloader/b44$a;->w:Ljava/lang/Object;

    iput v4, p0, Lcom/shabakaty/downloader/b44$a;->v:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v4, Lcom/shabakaty/downloader/b44;

    invoke-direct {v4, p1, v5, v2}, Lcom/shabakaty/downloader/b44;-><init>(Lcom/shabakaty/downloader/n34;Lcom/shabakaty/downloader/rm1;Lcom/shabakaty/downloader/ud0;)V

    invoke-static {v4, p0}, Lcom/shabakaty/downloader/j96;->g(Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 6
    :cond_3
    :goto_0
    check-cast p1, Lcom/shabakaty/downloader/te1;

    .line 7
    iput-object v2, p0, Lcom/shabakaty/downloader/b44$a;->w:Ljava/lang/Object;

    iput v3, p0, Lcom/shabakaty/downloader/b44$a;->v:I

    invoke-interface {p1, v1, p0}, Lcom/shabakaty/downloader/te1;->d(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 8
    :cond_4
    :goto_1
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
