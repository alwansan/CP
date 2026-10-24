.class public final Lcom/shabakaty/downloader/q5$c;
.super Lcom/shabakaty/downloader/af2;
.source "AnalyticsApiManagerPlayer.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/q5;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/xs3<",
        "Lcom/shabakaty/downloader/ys3;",
        ">;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/q5;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/q5;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/q5$c;->r:Lcom/shabakaty/downloader/q5;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/xs3;

    const-string v0, "result"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/xs3;->a:Lcom/shabakaty/downloader/ws3;

    .line 4
    iget p1, p1, Lcom/shabakaty/downloader/ws3;->v:I

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/q5$c;->r:Lcom/shabakaty/downloader/q5;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/q5;->e:Ljava/util/List;

    .line 7
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/q5$c;->r:Lcom/shabakaty/downloader/q5;

    .line 9
    iget-object p1, p1, Lcom/shabakaty/downloader/q5;->a:Landroid/content/Context;

    const-string v0, "context"

    .line 10
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 12
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "sharedPref.edit()"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v2, v0

    const-string v0, "playerAnalyticsTime"

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 14
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 15
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
