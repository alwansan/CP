.class public final Lcom/shabakaty/downloader/uk0$i0;
.super Ljava/lang/Object;
.source "DaggerAppComponent.java"

# interfaces
.implements Lcom/shabakaty/downloader/e7$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/uk0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "i0"
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/uk0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/uk0;Lcom/shabakaty/downloader/kj0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/uk0$i0;->a:Lcom/shabakaty/downloader/uk0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/shabakaty/downloader/e7;
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/fb1;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/uk0$j0;

    iget-object v1, p0, Lcom/shabakaty/downloader/uk0$i0;->a:Lcom/shabakaty/downloader/uk0;

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/uk0$j0;-><init>(Lcom/shabakaty/downloader/uk0;Lcom/shabakaty/downloader/fb1;)V

    return-object v0
.end method
