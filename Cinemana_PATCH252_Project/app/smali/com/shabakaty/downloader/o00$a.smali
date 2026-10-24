.class public final Lcom/shabakaty/downloader/o00$a;
.super Lcom/shabakaty/downloader/o00;
.source "Migrations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/o00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final c:Lcom/shabakaty/downloader/o00$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/o00$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/o00$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/o00$a;->c:Lcom/shabakaty/downloader/o00$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lcom/shabakaty/downloader/o00;-><init>(IILcom/shabakaty/downloader/nn0;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/yh4;)V
    .locals 2

    const-string v0, "database"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/mt2;->a:Lcom/shabakaty/downloader/kf2;

    const-string v0, "<this>"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/kt2;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/kt2;-><init>(Lcom/shabakaty/downloader/yh4;)V

    .line 4
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "start"

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/o00$a;->c:Lcom/shabakaty/downloader/o00$a;

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/kt2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
