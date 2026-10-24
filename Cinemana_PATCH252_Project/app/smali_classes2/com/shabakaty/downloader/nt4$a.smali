.class public final Lcom/shabakaty/downloader/nt4$a;
.super Ljava/lang/Object;
.source "resolvers.kt"

# interfaces
.implements Lcom/shabakaty/downloader/nt4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/nt4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/nt4$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/nt4$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/nt4$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/nt4$a;->a:Lcom/shabakaty/downloader/nt4$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/m82;)Lcom/shabakaty/downloader/kt4;
    .locals 1

    const-string v0, "javaTypeParameter"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
