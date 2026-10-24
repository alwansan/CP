.class public Lcom/shabakaty/downloader/tf0$a;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Lcom/shabakaty/downloader/kh4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/tf0;->i(Lcom/shabakaty/downloader/uk4;)Lcom/shabakaty/downloader/uk4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/kh4<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/uk4;

.field public final synthetic s:Lcom/shabakaty/downloader/tf0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/tf0;Lcom/shabakaty/downloader/uk4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/tf0$a;->s:Lcom/shabakaty/downloader/tf0;

    iput-object p2, p0, Lcom/shabakaty/downloader/tf0$a;->r:Lcom/shabakaty/downloader/uk4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Object;)Lcom/shabakaty/downloader/uk4;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/tf0$a;->s:Lcom/shabakaty/downloader/tf0;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/tf0;->d:Lcom/shabakaty/downloader/hf0;

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/sf0;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/sf0;-><init>(Lcom/shabakaty/downloader/tf0$a;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/hf0;->c(Ljava/util/concurrent/Callable;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    return-object p1
.end method
