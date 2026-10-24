.class public final Lcom/shabakaty/downloader/h45$a;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Lcom/shabakaty/downloader/d63;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/h45;->a(Landroid/view/View;Lcom/shabakaty/downloader/h45$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/h45$b;

.field public final synthetic b:Lcom/shabakaty/downloader/h45$c;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/h45$b;Lcom/shabakaty/downloader/h45$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/h45$a;->a:Lcom/shabakaty/downloader/h45$b;

    iput-object p2, p0, Lcom/shabakaty/downloader/h45$a;->b:Lcom/shabakaty/downloader/h45$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/shabakaty/downloader/x65;)Lcom/shabakaty/downloader/x65;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/h45$a;->a:Lcom/shabakaty/downloader/h45$b;

    new-instance v1, Lcom/shabakaty/downloader/h45$c;

    iget-object v2, p0, Lcom/shabakaty/downloader/h45$a;->b:Lcom/shabakaty/downloader/h45$c;

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/h45$c;-><init>(Lcom/shabakaty/downloader/h45$c;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/shabakaty/downloader/h45$b;->a(Landroid/view/View;Lcom/shabakaty/downloader/x65;Lcom/shabakaty/downloader/h45$c;)Lcom/shabakaty/downloader/x65;

    move-result-object p1

    return-object p1
.end method
