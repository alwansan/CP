.class public final Lcom/shabakaty/downloader/gq0$b;
.super Lcom/shabakaty/downloader/af2;
.source "DependencyContainer.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/gq0;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/k41;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/ny2;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/k41;

.field public final synthetic s:Lcom/shabakaty/downloader/gq0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/k41;Lcom/shabakaty/downloader/gq0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/gq0$b;->r:Lcom/shabakaty/downloader/k41;

    iput-object p2, p0, Lcom/shabakaty/downloader/gq0$b;->s:Lcom/shabakaty/downloader/gq0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gq0$b;->r:Lcom/shabakaty/downloader/k41;

    .line 2
    iget-boolean v0, v0, Lcom/shabakaty/downloader/k41;->c:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/gq0$b;->s:Lcom/shabakaty/downloader/gq0;

    new-instance v1, Lcom/shabakaty/downloader/g41;

    invoke-direct {v1}, Lcom/shabakaty/downloader/g41;-><init>()V

    .line 4
    iput-object v1, v0, Lcom/shabakaty/downloader/gq0;->d:Lcom/shabakaty/downloader/g41;

    .line 5
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/ny2;

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/gq0$b;->s:Lcom/shabakaty/downloader/gq0;

    .line 7
    iget-object v1, v1, Lcom/shabakaty/downloader/gq0;->a:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v1}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/content/SharedPreferences;

    const-string v1, "sharedPreferences"

    .line 8
    invoke-static {v3, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/gq0$b;->s:Lcom/shabakaty/downloader/gq0;

    .line 10
    iget-object v1, v1, Lcom/shabakaty/downloader/gq0;->b:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v1}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/shabakaty/downloader/a63;

    .line 11
    iget-object v1, p0, Lcom/shabakaty/downloader/gq0$b;->s:Lcom/shabakaty/downloader/gq0;

    .line 12
    iget-object v1, v1, Lcom/shabakaty/downloader/gq0;->c:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v1}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/shabakaty/downloader/lr1;

    .line 13
    iget-object v1, p0, Lcom/shabakaty/downloader/gq0$b;->r:Lcom/shabakaty/downloader/k41;

    .line 14
    iget-object v6, v1, Lcom/shabakaty/downloader/k41;->a:Lcom/shabakaty/downloader/ny2$b;

    .line 15
    iget-object v7, v1, Lcom/shabakaty/downloader/k41;->b:Lcom/shabakaty/downloader/ny2$a;

    .line 16
    iget-object v1, p0, Lcom/shabakaty/downloader/gq0$b;->s:Lcom/shabakaty/downloader/gq0;

    .line 17
    iget-object v8, v1, Lcom/shabakaty/downloader/gq0;->d:Lcom/shabakaty/downloader/g41;

    move-object v2, v0

    .line 18
    invoke-direct/range {v2 .. v8}, Lcom/shabakaty/downloader/ny2;-><init>(Landroid/content/SharedPreferences;Lcom/shabakaty/downloader/a63;Lcom/shabakaty/downloader/lr1;Lcom/shabakaty/downloader/ny2$b;Lcom/shabakaty/downloader/ny2$a;Lcom/shabakaty/downloader/g41;)V

    return-object v0
.end method
