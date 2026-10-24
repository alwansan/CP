.class public abstract Lcom/shabakaty/downloader/lr2;
.super Ljava/lang/Object;
.source "modifierChecks.kt"

# interfaces
.implements Lcom/shabakaty/downloader/jz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/lr2$b;,
        Lcom/shabakaty/downloader/lr2$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/nn0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/lr2;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lr2;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Lcom/shabakaty/downloader/xn1;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/jz$a;->a(Lcom/shabakaty/downloader/jz;Lcom/shabakaty/downloader/xn1;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
