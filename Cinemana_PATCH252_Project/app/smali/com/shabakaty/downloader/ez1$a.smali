.class public final Lcom/shabakaty/downloader/ez1$a;
.super Lcom/shabakaty/downloader/lm5$a;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ez1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/ez1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ez1;Lcom/shabakaty/downloader/hl3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ez1$a;->a:Lcom/shabakaty/downloader/ez1;

    invoke-direct {p0}, Lcom/shabakaty/downloader/lm5$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final H()Lcom/shabakaty/downloader/gx1;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ez1$a;->a:Lcom/shabakaty/downloader/ez1;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/p43;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/p43;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method
