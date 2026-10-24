.class public final Lcom/shabakaty/downloader/nv3;
.super Ljava/lang/Object;
.source "RuntimeSourceElementFactory.kt"

# interfaces
.implements Lcom/shabakaty/downloader/c82;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/nv3$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/nv3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/nv3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/nv3;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/nv3;->a:Lcom/shabakaty/downloader/nv3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/d72;)Lcom/shabakaty/downloader/b82;
    .locals 1

    const-string v0, "javaElement"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/nv3$a;

    check-cast p1, Lcom/shabakaty/downloader/kp3;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/nv3$a;-><init>(Lcom/shabakaty/downloader/kp3;)V

    return-object v0
.end method
