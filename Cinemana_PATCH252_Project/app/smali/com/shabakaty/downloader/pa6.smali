.class public final Lcom/shabakaty/downloader/pa6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/wu4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wu4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/pa6;->r:Lcom/shabakaty/downloader/wu4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/pa6;->r:Lcom/shabakaty/downloader/wu4;

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/wu4;->m()Lcom/shabakaty/downloader/br3;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/br3;->q(Lorg/json/JSONObject;)Lcom/shabakaty/downloader/nb3;

    :cond_0
    return-void
.end method
