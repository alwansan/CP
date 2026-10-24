.class public final Lcom/shabakaty/downloader/ho$f;
.super Ljava/lang/Object;
.source "BuiltInConverters.java"

# interfaces
.implements Lcom/shabakaty/downloader/de0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ho;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/de0<",
        "Lcom/shabakaty/downloader/ys3;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/ho$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ho$f;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ho$f;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ho$f;->r:Lcom/shabakaty/downloader/ho$f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/ys3;

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ys3;->close()V

    const/4 p1, 0x0

    return-object p1
.end method
