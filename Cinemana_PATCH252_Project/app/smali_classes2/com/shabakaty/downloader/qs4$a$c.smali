.class public final Lcom/shabakaty/downloader/qs4$a$c;
.super Lcom/shabakaty/downloader/qs4$a;
.source "AbstractTypeChecker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/qs4$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/qs4$a$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/qs4$a$c;

    invoke-direct {v0}, Lcom/shabakaty/downloader/qs4$a$c;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/qs4$a$c;->a:Lcom/shabakaty/downloader/qs4$a$c;

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
    .locals 0

    const-string p1, "type"

    .line 1
    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Should not be called"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
