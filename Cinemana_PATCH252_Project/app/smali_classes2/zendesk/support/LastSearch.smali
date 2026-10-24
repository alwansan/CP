.class public Lzendesk/support/LastSearch;
.super Ljava/lang/Object;
.source "LastSearch.java"


# instance fields
.field public final origin:Ljava/lang/String;

.field public final query:Ljava/lang/String;

.field public final resultsCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mobile_sdk"

    .line 2
    iput-object v0, p0, Lzendesk/support/LastSearch;->origin:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lzendesk/support/LastSearch;->query:Ljava/lang/String;

    .line 4
    iput p2, p0, Lzendesk/support/LastSearch;->resultsCount:I

    return-void
.end method
