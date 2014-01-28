package Faker::Provider::Company;

use 5.14.0;
use feature 'unicode_strings';
use Moo;
use Function::Parameters;

with 'Faker::Role::Data';
with 'Faker::Role::Provider';

method buzzword_type1 {
    my $data = $self->data;
    return $self->random_item(@{$data->{buzzword_type1_data}});
}

method buzzword_type2 {
    my $data = $self->data;
    return $self->random_item(@{$data->{buzzword_type2_data}});
}

method buzzword_type3 {
    my $data = $self->data;
    return $self->random_item(@{$data->{buzzword_type3_data}});
}

method catch_phase {
    my $data = $self->data;
    return join ' ',
        $self->buzzword_type3,
        $self->buzzword_type2,
        $self->buzzword_type1;
}

method company {
    my $data   = $self->data;
    my $format = $self->random_item(@{$data->{company_data_formats}});
    return $self->generator->parse($format);
}

method company_suffix {
    my $data = $self->data;
    return $self->random_item(@{$data->{company_suffix_data}});
}

method jargon_buzz_word {
    my $data = $self->data;
    return $self->random_item(@{$data->{jargon_buzz_data}});
}

method jargon_edge_word {
    my $data = $self->data;
    return $self->random_item(@{$data->{jargon_edge_data}});
}

method jargon_prop_word {
    my $data = $self->data;
    return $self->random_item(@{$data->{jargon_prop_data}});
}

1;

__DATA__

@@ buzzword_type1_data
implement
utilize
integrate
streamline
optimize
evolve
transform
embrace
enable
orchestrate
leverage
reinvent
aggregate
architect
enhance
incentivize
morph
empower
envisioneer
monetize
harness
facilitate
seize
disintermediate
synergize
strategize
deploy
brand
grow
target
syndicate
synthesize
deliver
mesh
incubate
engage
maximize
benchmark
expedite
reintermediate
whiteboard
visualize
repurpose
innovate
scale
unleash
drive
extend
engineer
revolutionize
generate
exploit
transition
e-enable
iterate
cultivate
matrix
productize
redefine
recontextualize

@@ buzzword_type2_data
clicks-and-mortar
value-added
vertical
proactive
robust
revolutionary
scalable
leading-edge
innovative
intuitive
strategic
e-business
mission-critical
sticky
one-to-one
24/7
end-to-end
global
B2B
B2C
granular
frictionless
virtual
viral
dynamic
24/365
best-of-breed
killer
magnetic
bleeding-edge
web-enabled
interactive
dot-com
sexy
back-end
real-time
efficient
front-end
distributed
seamless
extensible
turn-key
world-class
open-source
cross-platform
cross-media
synergistic
bricks-and-clicks
out-of-the-box
enterprise
integrated
impactful
wireless
transparent
next-generation
cutting-edge
user-centric
visionary
customized
ubiquitous
plug-and-play
collaborative
compelling
holistic
rich

@@ buzzword_type3_data
synergies
web-readiness
paradigms
markets
partnerships
infrastructures
platforms
initiatives
channels
eyeballs
communities
ROI
solutions
e-tailers
e-services
action-items
portals
niches
technologies
content
vortals
supply-chains
convergence
relationships
architectures
interfaces
e-markets
e-commerce
systems
bandwidth
infomediaries
models
mindshare
deliverables
users
schemas
networks
applications
metrics
e-business
functionalities
experiences
webservices
methodologies

@@ company_data_formats
{{last_name}} {{company_suffix}}

@@ company_suffix_data
Ltd.
Inc.
Co.

@@ jargon_edge_data
Adaptive
Advanced
Ameliorated
Assimilated
Automated
Balanced
Business-focused
Centralized
Cloned
Compatible
Configurable
Cross-group
Cross-platform
Customer-focused
Customizable
Decentralized
De-engineered
Devolved
Digitized
Distributed
Diverse
Down-sized
Enhanced
Enterprise-wide
Ergonomic
Exclusive
Expanded
Extended
Facetoface
Focused
Front-line
Fully-configurable
Function-based
Fundamental
Future-proofed
Grass-roots
Horizontal
Implemented
Innovative
Integrated
Intuitive
Inverse
Managed
Mandatory
Monitored
Multi-channelled
Multi-lateral
Multi-layered
Multi-tiered
Networked
Object-based
Open-architected
Open-source
Operative
Optimized
Optional
Organic
Organized
Persevering
Persistent
Phased
Polarised
Pre-emptive
Proactive
Profit-focused
Profound
Programmable
Progressive
Public-key
Quality-focused
Reactive
Realigned
Re-contextualized
Re-engineered
Reduced
Reverse-engineered
Right-sized
Robust
Seamless
Secured
Self-enabling
Sharable
Stand-alone
Streamlined
Switchable
Synchronised
Synergistic
Synergized
Team-oriented
Total
Triple-buffered
Universal
Up-sized
Upgradable
User-centric
User-friendly
Versatile
Virtual
Visionary
Vision-oriented

@@ jargon_prop_data
24hour
24/7
3rdgeneration
4thgeneration
5thgeneration
6thgeneration
actuating
analyzing
assymetric
asynchronous
attitude-oriented
background
bandwidth-monitored
bi-directional
bifurcated
bottom-line
clear-thinking
client-driven
client-server
coherent
cohesive
composite
context-sensitive
contextually-based
content-based
dedicated
demand-driven
didactic
directional
discrete
disintermediate
dynamic
eco-centric
empowering
encompassing
even-keeled
executive
explicit
exuding
fault-tolerant
foreground
fresh-thinking
full-range
global
grid-enabled
heuristic
high-level
holistic
homogeneous
human-resource
hybrid
impactful
incremental
intangible
interactive
intermediate
leadingedge
local
logistical
maximized
methodical
mission-critical
mobile
modular
motivating
multimedia
multi-state
multi-tasking
national
needs-based
neutral
nextgeneration
non-volatile
object-oriented
optimal
optimizing
radical
real-time
reciprocal
regional
responsive
scalable
secondary
solution-oriented
stable
static
systematic
systemic
system-worthy
tangible
tertiary
transitional
uniform
upward-trending
user-facing
value-added
web-enabled
well-modulated
zeroadministration
zerodefect
zerotolerance

@@ jargon_buzz_data
ability
access
adapter
algorithm
alliance
analyzer
application
approach
architecture
archive
artificialintelligence
array
attitude
benchmark
budgetarymanagement
capability
capacity
challenge
circuit
collaboration
complexity
concept
conglomeration
contingency
core
customerloyalty
database
data-warehouse
definition
emulation
encoding
encryption
extranet
firmware
flexibility
focusgroup
forecast
frame
framework
function
functionalities
GraphicInterface
groupware
GraphicalUserInterface
hardware
help-desk
hierarchy
hub
implementation
info-mediaries
infrastructure
initiative
installation
instructionset
interface
internetsolution
intranet
knowledgeuser
knowledgebase
localareanetwork
leverage
matrices
matrix
methodology
middleware
migration
model
moderator
monitoring
moratorium
neural-net
openarchitecture
opensystem
orchestration
paradigm
parallelism
policy
portal
pricingstructure
processimprovement
product
productivity
project
projection
protocol
securedline
service-desk
software
solution
standardization
strategy
structure
success
superstructure
support
synergy
systemengine
task-force
throughput
time-frame
toolset
utilisation
website
workforce
