.class public final Lcom/shabakaty/downloader/hb1;
.super Lcom/shabakaty/downloader/ui4;
.source "FilterSettingsViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.settings.FilterSettingsViewModel$changeSelectedParentalLevel$1"
    f = "FilterSettingsViewModel.kt"
    l = {
        0x17
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/se0;",
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

.field public final synthetic w:Lcom/shabakaty/downloader/kb1;

.field public final synthetic x:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/kb1;Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/kb1;",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/hb1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/hb1;->w:Lcom/shabakaty/downloader/kb1;

    iput-object p2, p0, Lcom/shabakaty/downloader/hb1;->x:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/hb1;

    iget-object v0, p0, Lcom/shabakaty/downloader/hb1;->w:Lcom/shabakaty/downloader/kb1;

    iget-object v1, p0, Lcom/shabakaty/downloader/hb1;->x:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/hb1;-><init>(Lcom/shabakaty/downloader/kb1;Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/hb1;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/ud0<",
            "*>;)",
            "Lcom/shabakaty/downloader/ud0<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/shabakaty/downloader/hb1;

    iget-object v0, p0, Lcom/shabakaty/downloader/hb1;->w:Lcom/shabakaty/downloader/kb1;

    iget-object v1, p0, Lcom/shabakaty/downloader/hb1;->x:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/hb1;-><init>(Lcom/shabakaty/downloader/kb1;Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/hb1;->v:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/hb1;->w:Lcom/shabakaty/downloader/kb1;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/kb1;->g:Lcom/shabakaty/downloader/n24;

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/n24;->e()Lcom/shabakaty/downloader/ia3;

    move-result-object p1

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/ia3;->a:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/hb1;->x:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/hb1;->w:Lcom/shabakaty/downloader/kb1;

    .line 10
    iget-object p1, p1, Lcom/shabakaty/downloader/kb1;->g:Lcom/shabakaty/downloader/n24;

    .line 11
    iget-object v1, p0, Lcom/shabakaty/downloader/hb1;->x:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v3, "3"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    sget-object v1, Lcom/shabakaty/downloader/ia3$d;->d:Lcom/shabakaty/downloader/ia3$d;

    goto :goto_1

    :pswitch_1
    const-string v3, "2"

    .line 14
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 15
    :cond_3
    sget-object v1, Lcom/shabakaty/downloader/ia3$c;->d:Lcom/shabakaty/downloader/ia3$c;

    goto :goto_1

    :pswitch_2
    const-string v3, "1"

    .line 16
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 17
    :cond_4
    sget-object v1, Lcom/shabakaty/downloader/ia3$a;->d:Lcom/shabakaty/downloader/ia3$a;

    goto :goto_1

    .line 18
    :cond_5
    :goto_0
    sget-object v1, Lcom/shabakaty/downloader/ia3$b;->d:Lcom/shabakaty/downloader/ia3$b;

    .line 19
    :goto_1
    iput v2, p0, Lcom/shabakaty/downloader/hb1;->v:I

    invoke-virtual {p1, v1, p0}, Lcom/shabakaty/downloader/n24;->p(Lcom/shabakaty/downloader/ia3;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 20
    :cond_6
    :goto_2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
