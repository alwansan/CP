.class public final Lcom/shabakaty/epom_view/ui/EpomView$e$a;
.super Lcom/shabakaty/downloader/ui4;
.source "EpomView.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.epom_view.ui.EpomView$onAttachedToWindow$1$1"
    f = "EpomView.kt"
    l = {
        0x4f
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/epom_view/ui/EpomView$e;->t(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/se0;",
        "Lcom/shabakaty/downloader/ud0<",
        "-",
        "Lcom/shabakaty/downloader/f41;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public v:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ud0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/epom_view/ui/EpomView$e$a;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p1, Lcom/shabakaty/epom_view/ui/EpomView$e$a;

    invoke-direct {p1, p2}, Lcom/shabakaty/epom_view/ui/EpomView$e$a;-><init>(Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/epom_view/ui/EpomView$e$a;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 0
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

    new-instance p1, Lcom/shabakaty/epom_view/ui/EpomView$e$a;

    invoke-direct {p1, p2}, Lcom/shabakaty/epom_view/ui/EpomView$e$a;-><init>(Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/epom_view/ui/EpomView$e$a;->v:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    iput v2, p0, Lcom/shabakaty/epom_view/ui/EpomView$e$a;->v:I

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/e41;->a:Lcom/shabakaty/downloader/gq0;

    if-eqz p1, :cond_b

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/gq0;->a()Lcom/shabakaty/downloader/ny2;

    move-result-object p1

    .line 4
    iget-object v1, p1, Lcom/shabakaty/downloader/ny2;->a:Landroid/content/SharedPreferences;

    const-wide/16 v3, 0x0

    const-string v5, "key_ad_hidden_time"

    invoke-interface {v1, v5, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-eqz v1, :cond_3

    .line 5
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 6
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v8, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v4, v8, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 7
    iget-object v4, p1, Lcom/shabakaty/downloader/ny2;->f:Lcom/shabakaty/downloader/g41;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const-string v7, "hiddenDateString"

    invoke-static {v3, v7}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {v3, v7}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "Ad was hidden at "

    .line 9
    invoke-static {v7, v3}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v4}, Lcom/shabakaty/downloader/g41;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/g41$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shabakaty/downloader/g41$a;->a()V

    goto :goto_0

    .line 10
    :cond_3
    iget-object v3, p1, Lcom/shabakaty/downloader/ny2;->f:Lcom/shabakaty/downloader/g41;

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const-string v4, "Ad was not hidden before.."

    .line 11
    invoke-virtual {v3, v4, v3}, Lcom/shabakaty/downloader/g41;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/g41$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shabakaty/downloader/g41$a;->a()V

    .line 12
    :goto_0
    iget-object v3, p1, Lcom/shabakaty/downloader/ny2;->f:Lcom/shabakaty/downloader/g41;

    const-string v4, "durationString"

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    iget-object v7, p1, Lcom/shabakaty/downloader/ny2;->e:Lcom/shabakaty/downloader/ny2$a;

    invoke-virtual {v7}, Lcom/shabakaty/downloader/ny2$a;->a()Ljava/lang/String;

    move-result-object v7

    .line 13
    invoke-static {v7, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "Hide ad duration is set to "

    .line 14
    invoke-static {v8, v7}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v3}, Lcom/shabakaty/downloader/g41;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/g41$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shabakaty/downloader/g41$a;->a()V

    .line 15
    :goto_1
    iget-object v3, p1, Lcom/shabakaty/downloader/ny2;->e:Lcom/shabakaty/downloader/ny2$a;

    .line 16
    iget-wide v7, v3, Lcom/shabakaty/downloader/ny2$a;->a:J

    add-long/2addr v5, v7

    .line 17
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v5, v6}, Ljava/util/Date;-><init>(J)V

    if-eqz v1, :cond_7

    .line 18
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :cond_7
    :goto_2
    if-eqz v2, :cond_8

    .line 19
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/ny2;->b(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_4

    .line 20
    :cond_8
    iget-object v1, p1, Lcom/shabakaty/downloader/ny2;->f:Lcom/shabakaty/downloader/g41;

    if-nez v1, :cond_9

    goto :goto_3

    :cond_9
    iget-object p1, p1, Lcom/shabakaty/downloader/ny2;->e:Lcom/shabakaty/downloader/ny2$a;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ny2$a;->a()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p1, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad was hidden less than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ago, will not fetch or display anything."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-virtual {v1, p1, v1}, Lcom/shabakaty/downloader/g41;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/g41$a;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/shabakaty/downloader/g41$a;->a()V

    .line 25
    :goto_3
    sget-object p1, Lcom/shabakaty/downloader/f41$b;->w:Lcom/shabakaty/downloader/f41$b;

    :goto_4
    if-ne p1, v0, :cond_a

    return-object v0

    :cond_a
    :goto_5
    return-object p1

    .line 26
    :cond_b
    sget-object p1, Lcom/shabakaty/downloader/j41;->r:Lcom/shabakaty/downloader/j41;

    throw p1
.end method
