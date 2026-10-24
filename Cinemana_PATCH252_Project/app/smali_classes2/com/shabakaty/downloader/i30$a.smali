.class public final Lcom/shabakaty/downloader/i30$a;
.super Ljava/lang/Object;
.source "ClassifierNamePolicy.kt"

# interfaces
.implements Lcom/shabakaty/downloader/i30;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/i30;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/i30$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/i30$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/i30$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/i30$a;->a:Lcom/shabakaty/downloader/i30$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/g30;Lcom/shabakaty/downloader/wq0;)Ljava/lang/String;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/kt4;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/shabakaty/downloader/kt4;

    invoke-interface {p1}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object p1

    const-string v0, "classifier.name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/shabakaty/downloader/wq0;->u(Lcom/shabakaty/downloader/hw2;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/shabakaty/downloader/gr0;->g(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/gi1;

    move-result-object p1

    const-string v0, "getFqName(classifier)"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/wq0;->t(Lcom/shabakaty/downloader/gi1;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
