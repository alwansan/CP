.class public Lcom/shabakaty/downloader/d65$b;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/d65;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/shabakaty/downloader/d65$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/shabakaty/downloader/d65$c;

.field public final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/xu3;->t:Lcom/shabakaty/downloader/xu3;

    sput-object v0, Lcom/shabakaty/downloader/d65$b;->c:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/d65$c;ILcom/shabakaty/downloader/d65$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/d65$b;->a:Lcom/shabakaty/downloader/d65$c;

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/d65$b;->b:I

    return-void
.end method
