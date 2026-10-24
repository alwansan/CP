.class public final Lcom/shabakaty/downloader/uk0$t1;
.super Ljava/lang/Object;
.source "DaggerAppComponent.java"

# interfaces
.implements Lcom/shabakaty/downloader/e7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/uk0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "t1"
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/uk0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/uk0;Lcom/shabakaty/downloader/n54;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/uk0$t1;->a:Lcom/shabakaty/downloader/uk0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/n54;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/uk0$t1;->a:Lcom/shabakaty/downloader/uk0;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/uk0;->W:Lcom/shabakaty/downloader/oj3;

    .line 4
    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ff3;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "<set-?>"

    .line 6
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/uk0$t1;->a:Lcom/shabakaty/downloader/uk0;

    .line 8
    iget-object v0, v0, Lcom/shabakaty/downloader/uk0;->S1:Lcom/shabakaty/downloader/oj3;

    .line 9
    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/p35;

    .line 10
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object v0, p1, Lcom/shabakaty/downloader/hj;->s:Lcom/shabakaty/downloader/p35;

    return-void
.end method
