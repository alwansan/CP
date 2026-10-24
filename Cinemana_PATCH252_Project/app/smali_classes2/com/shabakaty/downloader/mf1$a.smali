.class public final Lcom/shabakaty/downloader/mf1$a;
.super Ljava/lang/Object;
.source "Collect.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ue1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/mf1;->t(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ue1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/mf1;

.field public final synthetic s:Lcom/shabakaty/downloader/se0;

.field public final synthetic t:Lcom/shabakaty/downloader/lo3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/mf1;Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/lo3;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/mf1$a;->r:Lcom/shabakaty/downloader/mf1;

    iput-object p2, p0, Lcom/shabakaty/downloader/mf1$a;->s:Lcom/shabakaty/downloader/se0;

    iput-object p3, p0, Lcom/shabakaty/downloader/mf1$a;->t:Lcom/shabakaty/downloader/lo3;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/shabakaty/downloader/mf1$a;->t:Lcom/shabakaty/downloader/lo3;

    iget-object v0, p2, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/dw2;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/dw2;->setValue(Ljava/lang/Object;)V

    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/shabakaty/downloader/ic4;->a(Ljava/lang/Object;)Lcom/shabakaty/downloader/dw2;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/mf1$a;->r:Lcom/shabakaty/downloader/mf1;

    iget-object v0, v0, Lcom/shabakaty/downloader/mf1;->y:Lcom/shabakaty/downloader/t70;

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/mn3;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/mn3;-><init>(Lcom/shabakaty/downloader/gc4;)V

    .line 5
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/t70;->J(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    .line 7
    iput-object p1, p2, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    move-object p1, v0

    .line 8
    :goto_0
    sget-object p2, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    if-ne p1, p2, :cond_1

    return-object p1

    .line 9
    :cond_1
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
