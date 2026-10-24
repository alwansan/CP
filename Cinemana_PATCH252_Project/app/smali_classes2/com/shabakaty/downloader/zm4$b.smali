.class public final Lcom/shabakaty/downloader/zm4$b;
.super Lcom/shabakaty/downloader/af2;
.source "ThreadContext.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/zm4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/ym4<",
        "*>;",
        "Lcom/shabakaty/downloader/me0$b;",
        "Lcom/shabakaty/downloader/ym4<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/zm4$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/zm4$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/zm4$b;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/zm4$b;->r:Lcom/shabakaty/downloader/zm4$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/shabakaty/downloader/ym4;

    check-cast p2, Lcom/shabakaty/downloader/me0$b;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    instance-of p1, p2, Lcom/shabakaty/downloader/ym4;

    if-nez p1, :cond_1

    const/4 p2, 0x0

    :cond_1
    move-object p1, p2

    check-cast p1, Lcom/shabakaty/downloader/ym4;

    :goto_0
    return-object p1
.end method
