.class public final Lcom/shabakaty/downloader/qs4$a$d;
.super Lcom/shabakaty/downloader/qs4$a;
.source "AbstractTypeChecker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/qs4$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/qs4$a$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/qs4$a$d;

    invoke-direct {v0}, Lcom/shabakaty/downloader/qs4$a$d;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/qs4$a$d;->a:Lcom/shabakaty/downloader/qs4$a$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/qs4$a;-><init>(Lcom/shabakaty/downloader/nn0;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/d74;
    .locals 1

    const-string v0, "type"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Lcom/shabakaty/downloader/qs4;->d:Lcom/shabakaty/downloader/yt4;

    .line 2
    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/yt4;->o0(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/d74;

    move-result-object p1

    return-object p1
.end method
