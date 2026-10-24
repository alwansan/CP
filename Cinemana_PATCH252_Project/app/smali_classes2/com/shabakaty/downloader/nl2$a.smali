.class public final Lcom/shabakaty/downloader/nl2$a;
.super Ljava/lang/Object;
.source "LookupTracker.kt"

# interfaces
.implements Lcom/shabakaty/downloader/nl2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/nl2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/nl2$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/nl2$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/nl2$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/nl2$a;->a:Lcom/shabakaty/downloader/nl2$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/lang/String;Lcom/shabakaty/downloader/he3;Ljava/lang/String;Lcom/shabakaty/downloader/ny3;Ljava/lang/String;)V
    .locals 0

    const-string p3, "filePath"

    invoke-static {p1, p3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "position"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
